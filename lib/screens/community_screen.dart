import 'package:flutter/material.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart';
import '../models/user_post_model.dart';
import '../services/user_post_service.dart';
import '../services/follow_service.dart';
import '../services/like_service.dart';
import '../services/not_interested_service.dart';
import '../theme/app_theme.dart';
import 'post_detail_screen.dart';
import 'video_player_screen.dart';
import 'user_profile_screen.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  List<UserPost> _userPosts = [];
  List<VideoPostItem> _videoPosts = [];
  bool _isLoading = true;
  final ValueNotifier<Set<String>> _followedUsersNotifier = ValueNotifier<Set<String>>({});
  final ValueNotifier<Set<String>> _likedPostsNotifier = ValueNotifier<Set<String>>({});
  final ValueNotifier<Set<String>> _notInterestedPostsNotifier = ValueNotifier<Set<String>>({});
  final Map<String, String?> _videoThumbnails = {}; // 缓存视频缩略图路径

  @override
  void initState() {
    super.initState();
    _loadNotInterestedPosts();
    _loadUserPosts();
    _loadFollowedUsers();
    _loadLikedPosts();
  }

  @override
  void dispose() {
    _followedUsersNotifier.dispose();
    _likedPostsNotifier.dispose();
    _notInterestedPostsNotifier.dispose();
    super.dispose();
  }

  Future<void> _loadNotInterestedPosts() async {
    final notInterestedPosts = await NotInterestedService.getNotInterestedPosts();
    _notInterestedPostsNotifier.value = notInterestedPosts;
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

  Future<void> _loadUserPosts() async {
    try {
      final posts = await UserPostService.loadAllUserPosts();
      final notInterestedPosts = await NotInterestedService.getNotInterestedPosts();
      
      // 获取所有用户的第一条视频帖子
      List<VideoPostItem> videoPosts = [];
      for (var userPost in posts) {
        // 查找该用户的第一条视频帖子
        Post? videoPost;
        try {
          videoPost = userPost.allPosts.firstWhere(
            (post) => post.video != null && post.video!.isNotEmpty,
          );
        } catch (e) {
          // 如果该用户没有视频帖子，跳过
          continue;
        }
        
        // 确保找到了视频帖子
        if (videoPost.video != null && videoPost.video!.isNotEmpty) {
          // 检查是否被标记为不感兴趣
          final uniquePostId = '${userPost.userId}_${videoPost.postId}';
          if (notInterestedPosts.contains(uniquePostId)) {
            // 跳过不感兴趣的视频
            continue;
          }
          
          videoPosts.add(VideoPostItem(
            userId: userPost.userId,
            userInfo: userPost.userInfo,
            post: videoPost,
          ));
          
          // 异步生成缩略图（不等待）
          if (videoPost.image == null) {
            _generateVideoThumbnail(videoPost.video!);
          }
        }
      }
      
      // 调试：打印每个用户的视频信息
      print('Total video posts loaded: ${videoPosts.length}');
      for (var item in videoPosts) {
        print('User: ${item.userInfo.nickname}, Video: ${item.post.video}, Title: ${item.post.title}');
      }
      
      setState(() {
        _userPosts = posts;
        _videoPosts = videoPosts;
        _isLoading = false;
      });
    } catch (e) {
      print('Error loading user posts: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  // 从视频生成首帧缩略图
  Future<void> _generateVideoThumbnail(String videoPath) async {
    if (_videoThumbnails.containsKey(videoPath) && _videoThumbnails[videoPath] != null) {
      return; // 已经生成过
    }
    
    try {
      print('Generating thumbnail for: $videoPath');
      // 先将 assets 中的视频复制到临时目录
      final ByteData data = await rootBundle.load(videoPath);
      final Directory tempDir = await getTemporaryDirectory();
      // 使用完整的路径作为文件名，确保不同用户的视频不会冲突
      final fileName = videoPath.replaceAll('/', '_').replaceAll('assets_', '');
      final File tempVideoFile = File('${tempDir.path}/$fileName');
      
      // 如果文件已存在，先删除
      if (await tempVideoFile.exists()) {
        await tempVideoFile.delete();
      }
      
      await tempVideoFile.writeAsBytes(data.buffer.asUint8List());
      
      // 生成缩略图，使用唯一的文件名
      final thumbnailFileName = '${fileName}_thumb.jpg';
      final thumbnailPath = await VideoThumbnail.thumbnailFile(
        video: tempVideoFile.path,
        thumbnailPath: '${tempDir.path}/$thumbnailFileName',
        imageFormat: ImageFormat.JPEG,
        maxWidth: 400,
        quality: 75,
        timeMs: 0, // 获取第一帧
      );
      
      if (thumbnailPath != null && mounted) {
        print('Thumbnail generated: $thumbnailPath for video: $videoPath');
        setState(() {
          _videoThumbnails[videoPath] = thumbnailPath;
        });
      }
      
      // 清理临时视频文件
      if (await tempVideoFile.exists()) {
        await tempVideoFile.delete();
      }
    } catch (e) {
      print('Error generating video thumbnail for $videoPath: $e');
      // 即使生成失败，也标记为已尝试，避免重复尝试
      if (mounted) {
        setState(() {
          _videoThumbnails[videoPath] = null;
        });
      }
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 16.0),
                  child: Image.asset(
                    'assets/zaly_home_resonance.webp',
                    height: 50,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Image.asset(
                    'assets/zaly_community_challenge_banner.webp',
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 24),
                // Recommended users 标题
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    'Recommended users',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // 用户列表
                _isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : _userPosts.isEmpty
                        ? const Center(child: Text('No users available'))
                        : SizedBox(
                            height: 100,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: const EdgeInsets.symmetric(horizontal: 24.0),
                              itemCount: _userPosts.length,
                              itemBuilder: (context, index) {
                                return _buildUserAvatar(_userPosts[index]);
                              },
                            ),
                          ),
                    ],
                  ),
                ),
                // 视频帖子列表
                _isLoading
                    ? const SliverToBoxAdapter(child: SizedBox())
                    : _videoPosts.isEmpty
                        ? const SliverToBoxAdapter(
                            child: Center(child: Text('No video posts available')))
                        : SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                return _buildVideoPostCard(_videoPosts[index]);
                              },
                              childCount: _videoPosts.length,
                            ),
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

  Widget _buildVideoThumbnail(VideoPostItem videoPostItem) {
    // 优先使用 post.image
    if (videoPostItem.post.image != null) {
      return Image.asset(
        videoPostItem.post.image!,
        width: double.infinity,
        height: 400,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return _buildThumbnailFromVideo(videoPostItem);
        },
      );
    }
    
    // 如果没有 image，尝试从视频路径推断缩略图
    return _buildThumbnailFromVideo(videoPostItem);
  }

  Widget _buildThumbnailFromVideo(VideoPostItem videoPostItem) {
    if (videoPostItem.post.video == null) {
      return _buildThumbnailPlaceholder(videoPostItem);
    }
    
    final videoPath = videoPostItem.post.video!;
    
    // 如果已经有生成的缩略图，显示它
    if (_videoThumbnails.containsKey(videoPath) && 
        _videoThumbnails[videoPath] != null) {
      return Image.file(
        File(_videoThumbnails[videoPath]!),
        width: double.infinity,
        height: 400,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return _buildThumbnailPlaceholder(videoPostItem);
        },
      );
    }
    
    // 如果没有，异步生成并显示占位符
    _generateVideoThumbnail(videoPath);
    return _buildThumbnailPlaceholder(videoPostItem);
  }

  Widget _buildThumbnailPlaceholder(VideoPostItem videoPostItem) {
    return Container(
      height: 400,
      color: Colors.grey[300],
      child: const Center(
        child: Icon(Icons.videocam, size: 50),
      ),
    );
  }

  Widget _buildUserAvatar(UserPost userPost) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserProfileScreen(
              userPost: userPost,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFFFF6B9D),
                  width: 2,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  userPost.userInfo.avatar,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[300],
                      child: const Icon(Icons.person, size: 35),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoPostCard(VideoPostItem videoPostItem) {
    // 调试：确保每个卡片使用不同的数据
    final uniqueKey = ValueKey('${videoPostItem.userId}_${videoPostItem.post.postId}');
    
    return Container(
      key: uniqueKey,
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 用户信息和 Follow 按钮
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  videoPostItem.userInfo.avatar,
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 40,
                      height: 40,
                      color: Colors.grey[300],
                      child: const Icon(Icons.person, size: 20),
                    );
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  videoPostItem.userInfo.nickname,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              ValueListenableBuilder<Set<String>>(
                valueListenable: _followedUsersNotifier,
                builder: (context, followedUsers, child) {
                  final isFollowing = followedUsers.contains(videoPostItem.userId);
                  return GestureDetector(
                    onTap: () => _toggleFollow(videoPostItem.userId),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        gradient: isFollowing
                            ? null
                            : LinearGradient(
                                colors: [
                                  AppTheme.primaryColor,
                                  AppTheme.primaryColor.withOpacity(0.7),
                                ],
                              ),
                        color: isFollowing ? Colors.grey[300] : null,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        isFollowing ? 'Following' : 'Follow',
                        style: TextStyle(
                          color: isFollowing ? Colors.black87 : Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 12),
          // 视频缩略图
          GestureDetector(
            onTap: () async {
              if (videoPostItem.post.video != null) {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VideoPlayerScreen(
                      post: videoPostItem.post,
                      userInfo: videoPostItem.userInfo,
                      userId: videoPostItem.userId,
                    ),
                  ),
                );
                // 从视频播放页面返回后，刷新列表以过滤不感兴趣的视频
                _loadNotInterestedPosts();
                _loadUserPosts();
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PostDetailScreen(
                      post: videoPostItem.post,
                      userInfo: videoPostItem.userInfo,
                      userId: videoPostItem.userId,
                    ),
                  ),
                );
              }
            },
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: _buildVideoThumbnail(videoPostItem),
                ),
                // 播放按钮
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.play_arrow,
                      color: Colors.black87,
                      size: 30,
                    ),
                  ),
                ),
                // 点赞按钮
                Positioned(
                  top: 16,
                  right: 16,
                  child: ValueListenableBuilder<Set<String>>(
                    valueListenable: _likedPostsNotifier,
                    builder: (context, likedPosts, child) {
                      final uniquePostId = '${videoPostItem.userId}_${videoPostItem.post.postId}';
                      final isLiked = likedPosts.contains(uniquePostId);
                      return GestureDetector(
                        onTap: () => _toggleLike(uniquePostId),
                        behavior: HitTestBehavior.opaque,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            isLiked ? Icons.favorite : Icons.favorite_border,
                            color: isLiked ? Colors.red : Colors.grey,
                            size: 20,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          // 标题
          Text(
            videoPostItem.post.title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          // 内容
          Text(
            videoPostItem.post.content,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
              height: 1.5,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

// 视频帖子项模型
class VideoPostItem {
  final String userId;
  final UserInfo userInfo;
  final Post post;

  VideoPostItem({
    required this.userId,
    required this.userInfo,
    required this.post,
  });
}


