import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user_post_model.dart';
import '../services/user_post_service.dart';
import '../services/follow_service.dart';
import '../services/like_service.dart';
import 'video_player_screen.dart';
import 'velvy_inapppurchases_screen.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  List<VideoPostItem> _videoPosts = [];
  bool _isLoading = true;
  final ValueNotifier<Set<String>> _followedUsersNotifier = ValueNotifier<Set<String>>({});
  final ValueNotifier<Set<String>> _likedPostsNotifier = ValueNotifier<Set<String>>({});
  final PageController _videoPageController = PageController(viewportFraction: 0.85);
  final Map<String, String?> _thumbnailCache = {};
  static const int _unlockCost = 20; // 解锁视频所需金币

  @override
  void initState() {
    super.initState();
    _loadData();
    _loadFollowedUsers();
    _loadLikedPosts();
  }

  @override
  void dispose() {
    _followedUsersNotifier.dispose();
    _likedPostsNotifier.dispose();
    _videoPageController.dispose();
    super.dispose();
  }

  Future<void> _loadLikedPosts() async {
    final likedPosts = await LikeService.getLikedPosts();
    _likedPostsNotifier.value = likedPosts;
  }

  Future<void> _toggleLike(String postId) async {
    await LikeService.toggleLike(postId);
    final newLikedPosts = await LikeService.getLikedPosts();
    _likedPostsNotifier.value = newLikedPosts;
  }

  Future<void> _loadFollowedUsers() async {
    final followedUsers = await FollowService.getFollowedUsers();
    _followedUsersNotifier.value = followedUsers;
  }

  Future<void> _toggleFollow(String userId) async {
    await FollowService.toggleFollow(userId);
    final newFollowedUsers = await FollowService.getFollowedUsers();
    _followedUsersNotifier.value = newFollowedUsers;
  }

  // 获取视频的唯一标识符
  String _getVideoId(VideoPostItem videoPost) {
    return '${videoPost.userPost.userId}_${videoPost.post.postId}';
  }

  // 检查视频是否已解锁
  Future<bool> _isVideoUnlocked(String videoId) async {
    final prefs = await SharedPreferences.getInstance();
    final unlockedVideos = prefs.getStringList('unlockedVideos') ?? [];
    return unlockedVideos.contains(videoId);
  }

  // 标记视频为已解锁
  Future<void> _unlockVideo(String videoId) async {
    final prefs = await SharedPreferences.getInstance();
    final unlockedVideos = prefs.getStringList('unlockedVideos') ?? [];
    if (!unlockedVideos.contains(videoId)) {
      unlockedVideos.add(videoId);
      await prefs.setStringList('unlockedVideos', unlockedVideos);
    }
  }

  // 获取当前金币余额
  Future<int> _getVelvyCoins() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('velvyCoins') ?? 0;
  }

  // 扣除金币
  Future<bool> _deductCoins(int amount) async {
    final prefs = await SharedPreferences.getInstance();
    final currentCoins = prefs.getInt('velvyCoins') ?? 0;
    if (currentCoins >= amount) {
      await prefs.setInt('velvyCoins', currentCoins - amount);
      return true;
    }
    return false;
  }

  // 处理视频解锁和播放
  Future<void> _handleVideoTap(VideoPostItem videoPost) async {
    if (videoPost.post.video == null) return;

    final videoId = _getVideoId(videoPost);
    final isUnlocked = await _isVideoUnlocked(videoId);

    // 如果已解锁，直接播放
    if (isUnlocked) {
      _playVideo(videoPost);
      return;
    }

    // 如果未解锁，检查金币余额
    final currentCoins = await _getVelvyCoins();

    if (currentCoins >= _unlockCost) {
      // 金币足够，显示确认对话框
      final shouldUnlock = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Text(
            'Unlock Video',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Unlock this video for $_unlockCost coins?',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
              Text(
                'Your balance: $currentCoins coins',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF6B9D),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text('Unlock'),
            ),
          ],
        ),
      );

      if (shouldUnlock == true) {
        // 再次检查金币（防止在对话框显示期间金币被消耗）
        final coinsAfterCheck = await _getVelvyCoins();
        if (coinsAfterCheck >= _unlockCost) {
          final success = await _deductCoins(_unlockCost);
          if (success) {
            await _unlockVideo(videoId);
            if (mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Video unlocked! -$_unlockCost coins'),
                  backgroundColor: const Color(0xFF98D8C8),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              );
            }
            _playVideo(videoPost);
          }
        } else {
          // 金币不足，提示充值
          _showInsufficientCoinsDialog();
        }
      }
    } else {
      // 金币不足，提示充值
      _showInsufficientCoinsDialog();
    }
  }

  // 显示金币不足对话框
  Future<void> _showInsufficientCoinsDialog() async {
    final currentCoins = await _getVelvyCoins();
    final shouldRecharge = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: const Text(
          'Insufficient Coins',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'You need $_unlockCost coins to unlock this video.',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Your balance: $currentCoins coins',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Would you like to recharge?',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFF6B9D),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text('Recharge'),
          ),
        ],
      ),
    );

    if (shouldRecharge == true && mounted) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const InAppPurchasesPage(),
        ),
      );
    }
  }

  // 播放视频
  void _playVideo(VideoPostItem videoPost) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => VideoPlayerScreen(
          post: videoPost.post,
          userInfo: videoPost.userPost.userInfo,
          userId: videoPost.userPost.userId,
        ),
      ),
    );
  }

  Future<void> _loadData() async {
    try {
      final posts = await UserPostService.loadAllUserPosts();
      
      // 提取所有视频帖子
      final videoPosts = <VideoPostItem>[];
      for (var userPost in posts) {
        for (var post in userPost.allPosts) {
          if (post.video != null) {
            videoPosts.add(VideoPostItem(
              userPost: userPost,
              post: post,
            ));
          }
        }
      }
      
      setState(() {
        _videoPosts = videoPosts;
        _isLoading = false;
      });
      
      // 预加载视频缩略图
      _loadVideoThumbnails();
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
    }
  }
  
  Future<void> _loadVideoThumbnails() async {
    // 并发加载多个缩略图,但限制并发数量避免过载
    const maxConcurrent = 3;
    for (int i = 0; i < _videoPosts.length; i += maxConcurrent) {
      final batch = _videoPosts.skip(i).take(maxConcurrent);
      await Future.wait(
        batch.map((videoPost) async {
          if (videoPost.post.video != null) {
            // 使用 userId + postId 作为唯一键
            final uniqueKey = '${videoPost.userPost.userId}_${videoPost.post.postId}';
            if (!_thumbnailCache.containsKey(uniqueKey)) {
              final thumbnail = await _generateThumbnail(
                videoPost.post.video!,
                uniqueKey, // 使用 userId + postId 确保唯一性
              );
              if (mounted) {
                setState(() {
                  _thumbnailCache[uniqueKey] = thumbnail;
                });
              }
            }
          }
        }),
      );
    }
  }
  
  Future<String?> _generateThumbnail(String videoPath, String postId) async {
    try {
      // 如果是 asset 路径,需要先复制到临时目录
      String actualVideoPath = videoPath;
      
      if (videoPath.startsWith('assets/')) {
        // 将 asset 视频复制到临时目录,使用 postId 确保文件名唯一
        final tempDir = await getTemporaryDirectory();
        // 使用 postId 作为文件名的一部分,确保每个视频都有唯一的文件名
        final fileName = '${postId}_${videoPath.split('/').last}';
        final videoFile = File('${tempDir.path}/$fileName');
        
        // 如果文件已存在,直接使用
        if (await videoFile.exists()) {
          actualVideoPath = videoFile.path;
        } else {
          // 从 asset 复制到临时目录
          final byteData = await rootBundle.load(videoPath);
          await videoFile.writeAsBytes(byteData.buffer.asUint8List());
          actualVideoPath = videoFile.path;
        }
      }
      
      // 生成缩略图,使用 postId 确保缩略图文件名唯一
      final tempDir = await getTemporaryDirectory();
      final generatedThumbnailPath = await VideoThumbnail.thumbnailFile(
        video: actualVideoPath,
        thumbnailPath: tempDir.path,
        imageFormat: ImageFormat.WEBP,
        maxWidth: 400,
        quality: 75,
      );
      
      // 如果生成成功,重命名为使用 postId 的唯一文件名
      if (generatedThumbnailPath != null) {
        final uniqueThumbnailPath = '${tempDir.path}/${postId}_thumbnail.webp';
        final thumbnailFile = File(generatedThumbnailPath);
        if (await thumbnailFile.exists()) {
          // 如果目标文件已存在,先删除
          final targetFile = File(uniqueThumbnailPath);
          if (await targetFile.exists()) {
            await targetFile.delete();
          }
          // 重命名文件
          await thumbnailFile.rename(uniqueThumbnailPath);
          return uniqueThumbnailPath;
        }
      }
      
      return generatedThumbnailPath;
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/zaly_allbg.webp',
            fit: BoxFit.cover,
          ),
          SafeArea(
            bottom: false,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildHeader(),
                        const SizedBox(height: 24),
                        _buildWelcomeCard(),
                        const SizedBox(height: 24),
                        _buildSectionTitle(),
                      ],
                    ),
                  ),
                ),
                if (_isLoading)
                  const SliverToBoxAdapter(
                    child: Center(child: CircularProgressIndicator()),
                  )
                else if (_videoPosts.isEmpty)
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Center(
                        child: Text(
                          'No Share stories available yet',
                          style: TextStyle(fontSize: 16, color: Colors.white70),
                        ),
                      ),
                    ),
                  )
                else
                  SliverToBoxAdapter(
                    child: _buildVideoCarousel(),
                  ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).padding.bottom + 166,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Support Community',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                'You\'re not alone on this journey',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white.withOpacity(0.9),
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        const SizedBox(width: 12),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFFFF6B9D).withOpacity(0.3),
                const Color(0xFFA496FA).withOpacity(0.3),
              ],
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(
            Icons.people,
            color: Colors.white,
            size: 28,
          ),
        ),
      ],
    );
  }

  Widget _buildWelcomeCard() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF98D8C8).withOpacity(0.95),
            const Color(0xFF90EE90).withOpacity(0.95),
          ],
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF98D8C8).withOpacity(0.4),
            blurRadius: 20,
            offset: const Offset(0, 10),
            spreadRadius: 2,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 12,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.35),
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 26,
                ),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Text(
                  'Welcome to Our Community',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 0.3,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            'This is a safe space to share your emotional journey, find support, and connect with others who understand.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              _buildCommunityStatBadge('💬', 'Share Stories'),
              const SizedBox(width: 12),
              _buildCommunityStatBadge('🤝', 'Find Support'),
              const SizedBox(width: 12),
              _buildCommunityStatBadge('🌱', 'Grow Together'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCommunityStatBadge(String emoji, String label) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text(emoji, style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Share Stories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Swipe to explore emotional journeys',
              style: TextStyle(
                fontSize: 13,
                color: Colors.black,
              ),
            ),
          ],
        ),
       
      ],
    );
  }

  Widget _buildVideoCarousel() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 520,
          child: PageView.builder(
            controller: _videoPageController,
            itemCount: _videoPosts.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: _buildVideoCard(_videoPosts[index], index),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        // 页面指示器
        Center(
          child: _buildPageIndicator(),
        ),
      ],
    );
  }
  
  Widget _buildPageIndicator() {
    return AnimatedBuilder(
      animation: _videoPageController,
      builder: (context, child) {
        double page = 0;
        if (_videoPageController.hasClients && _videoPageController.position.hasContentDimensions) {
          page = _videoPageController.page ?? 0;
        }
        
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(_videoPosts.length, (index) {
            double distance = (page - index).abs();
            double opacity = (1 - (distance * 0.3)).clamp(0.3, 1.0);
            double size = distance < 1 ? 8 - (distance * 2) : 6;
            
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: size,
              height: size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(opacity),
              ),
            );
          }),
        );
      },
    );
  }
  
  Widget _buildVideoCard(VideoPostItem videoPost, int index) {
    // 使用 userId + postId 作为唯一键查找缩略图
    final uniqueKey = '${videoPost.userPost.userId}_${videoPost.post.postId}';
    final thumbnail = _thumbnailCache[uniqueKey];
    
    return GestureDetector(
      onTap: () => _handleVideoTap(videoPost),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Stack(
            fit: StackFit.expand,
            children: [
              // 视频缩略图背景
              if (thumbnail != null && File(thumbnail).existsSync())
                Image.file(
                  File(thumbnail),
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    // 如果缩略图加载失败,显示默认背景
                    return Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color(0xFFFF6B9D).withOpacity(0.7),
                            const Color(0xFFA496FA).withOpacity(0.7),
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.videocam,
                          color: Colors.white,
                          size: 60,
                        ),
                      ),
                    );
                  },
                )
              else
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFFFF6B9D).withOpacity(0.7),
                        const Color(0xFFA496FA).withOpacity(0.7),
                      ],
                    ),
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Loading video...',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              
              // 渐变遮罩
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.7),
                    ],
                    stops: const [0.5, 1.0],
                  ),
                ),
              ),
              
              // 播放按钮
              Center(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.9),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Color(0xFFFF6B9D),
                    size: 40,
                  ),
                ),
              ),
              
              // 用户信息和内容
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // 用户头像和昵称
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                videoPost.userPost.userInfo.avatar,
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  videoPost.userPost.userInfo.nickname,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '${videoPost.userPost.userInfo.age} • ${videoPost.userPost.userInfo.location}',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                ),
                              ],
                            ),
                          ),
                         
                        ],
                      ),
                      const SizedBox(height: 16),
                      // 帖子标题
                      if (videoPost.post.title.isNotEmpty)
                        Text(
                          videoPost.post.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      const SizedBox(height: 8),
                      // 帖子内容
                      Text(
                        videoPost.post.content,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.9),
                          height: 1.4,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 16),
                      // 互动按钮
                      Row(
                        children: [
                          
                          const Spacer(),
                          // 情绪标签
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: const Color(0xFF98D8C8).withOpacity(0.9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Text(
                              videoPost.post.emotion,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 视频帖子数据类
class VideoPostItem {
  final UserPost userPost;
  final Post post;
  
  VideoPostItem({
    required this.userPost,
    required this.post,
  });
}

