import 'package:flutter/material.dart';
import 'dart:math';
import '../models/user_post_model.dart';
import '../services/follow_service.dart';
import '../services/block_service.dart';
import '../services/report_service.dart';
import 'post_detail_screen.dart';
import 'zaly_chat_screen.dart';

class UserProfileScreen extends StatefulWidget {
  final UserPost userPost;

  const UserProfileScreen({
    super.key,
    required this.userPost,
  });

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final ValueNotifier<bool> _isFollowingNotifier = ValueNotifier<bool>(false);
  final ValueNotifier<bool> _isBlockedNotifier = ValueNotifier<bool>(false);
  final Random _random = Random();
  
  // 随机生成粉丝数和关注数
  late int _followers;
  late int _following;

  @override
  void initState() {
    super.initState();
    // 生成随机的粉丝数（100-9999）和关注数（50-999）
    _followers = _random.nextInt(900) + 100;
    _following = _random.nextInt(450) + 50;
    
    _loadFollowStatus();
    _loadBlockStatus();
    // 调试：打印用户信息
    print('UserProfileScreen - UserId: ${widget.userPost.userId}');
    print('UserProfileScreen - Nickname: ${widget.userPost.userInfo.nickname}');
    print('UserProfileScreen - Gender: ${widget.userPost.userInfo.gender}');
    print('UserProfileScreen - Avatar: ${widget.userPost.userInfo.avatar}');
    print('UserProfileScreen - Total posts: ${widget.userPost.allPosts.length}');
    print('UserProfileScreen - Image posts: ${_imagePosts.length}');
    print('UserProfileScreen - Random Followers: $_followers, Following: $_following');
  }

  @override
  void dispose() {
    _isFollowingNotifier.dispose();
    _isBlockedNotifier.dispose();
    super.dispose();
  }

  Future<void> _loadBlockStatus() async {
    final isBlocked = await BlockService.isBlocked(widget.userPost.userId);
    _isBlockedNotifier.value = isBlocked;
  }

  Future<void> _showBlockDialog() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          'Block User',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        content: Text(
          'Are you sure you want to block ${widget.userPost.userInfo.nickname}? You will no longer see their content.',
          style: const TextStyle(fontSize: 16),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: TextButton.styleFrom(
              foregroundColor: Colors.red,
            ),
            child: const Text('Block'),
          ),
        ],
      ),
    );

    if (confirmed == true && mounted) {
      await BlockService.blockUser(widget.userPost.userId);
      _isBlockedNotifier.value = true;
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('User blocked successfully'),
            duration: Duration(seconds: 2),
            backgroundColor: Colors.green,
          ),
        );
      }
    }
  }

  Future<void> _showUnblockDialog() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          'Unblock User',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        content: Text(
          'Are you sure you want to unblock ${widget.userPost.userInfo.nickname}?',
          style: const TextStyle(fontSize: 16),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Unblock'),
          ),
        ],
      ),
    );

    if (confirmed == true && mounted) {
      await BlockService.unblockUser(widget.userPost.userId);
      _isBlockedNotifier.value = false;
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('User unblocked successfully'),
            duration: Duration(seconds: 2),
            backgroundColor: Colors.green,
          ),
        );
      }
    }
  }

  Future<void> _showReportDialog() async {
    final reportReasons = [
      'Spam',
      'Inappropriate content',
      'Harassment or bullying',
      'False information',
      'Impersonation',
      'Other',
    ];

    String? selectedReason;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setDialogState) => AlertDialog(
          title: const Text(
            'Report User',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          content: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Why are you reporting this user?',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                ...reportReasons.map((reason) => RadioListTile<String>(
                  title: Text(reason),
                  value: reason,
                  groupValue: selectedReason,
                  onChanged: (value) {
                    setDialogState(() {
                      selectedReason = value;
                    });
                  },
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                )),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: selectedReason == null
                  ? null
                  : () => Navigator.of(context).pop(true),
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
              child: const Text('Report'),
            ),
          ],
        ),
      ),
    );

    if (confirmed == true && selectedReason != null && mounted) {
      // 使用 userId 作为举报标识
      await ReportService.reportPost(widget.userPost.userId, selectedReason!);
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('User reported. Thank you for your feedback.'),
            duration: Duration(seconds: 2),
            backgroundColor: Colors.green,
          ),
        );
      }
    }
  }

  Future<void> _loadFollowStatus() async {
    final isFollowing = await FollowService.isFollowing(widget.userPost.userId);
    _isFollowingNotifier.value = isFollowing;
  }

  Future<void> _toggleFollow() async {
    await FollowService.toggleFollow(widget.userPost.userId);
    final newStatus = await FollowService.isFollowing(widget.userPost.userId);
    _isFollowingNotifier.value = newStatus;
    
    // 更新粉丝数（模拟）
    if (newStatus) {
      setState(() {
        _followers++;
      });
    } else {
      setState(() {
        _followers--;
      });
    }
  }

  String _getGenderSymbol(String gender) {
    if (gender.toLowerCase() == 'female' || gender.toLowerCase() == 'f') {
      return '♀';
    } else if (gender.toLowerCase() == 'male' || gender.toLowerCase() == 'm') {
      return '♂';
    }
    return '';
  }

  List<Post> get _imagePosts {
    return widget.userPost.allPosts.where((post) => post.image != null).toList();
  }

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // 通用背景图片铺满
          Image.asset(
            'assets/zaly_allbg.webp',
            fit: BoxFit.cover,
          ),
          // Profile背景图片，从返回按钮下方30开始
          Positioned(
            top: topPadding + 56 + 30, // SafeArea顶部 + 返回按钮高度 + 30像素间距
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/zaly_profile_bg.webp',
              fit: BoxFit.fitWidth,
            ),
          ),
          SafeArea(
            bottom: false,
            child: CustomScrollView(
              slivers: [
                // 顶部返回按钮和更多按钮
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back, color: Colors.black87),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        const Spacer(),
                        ValueListenableBuilder<bool>(
                          valueListenable: _isBlockedNotifier,
                          builder: (context, isBlocked, child) {
                            return PopupMenuButton<String>(
                              icon: const Icon(Icons.more_vert, color: Colors.black87),
                              onSelected: (value) {
                                if (value == 'block') {
                                  _showBlockDialog();
                                } else if (value == 'unblock') {
                                  _showUnblockDialog();
                                } else if (value == 'report') {
                                  _showReportDialog();
                                }
                              },
                              itemBuilder: (context) => [
                                if (isBlocked)
                                  const PopupMenuItem<String>(
                                    value: 'unblock',
                                    child: Row(
                                      children: [
                                        Icon(Icons.check_circle_outline, color: Colors.green, size: 20),
                                        SizedBox(width: 8),
                                        Text('Unblock User'),
                                      ],
                                    ),
                                  )
                                else
                                  const PopupMenuItem<String>(
                                    value: 'block',
                                    child: Row(
                                      children: [
                                        Icon(Icons.block, color: Colors.red, size: 20),
                                        SizedBox(width: 8),
                                        Text('Block User', style: TextStyle(color: Colors.red)),
                                      ],
                                    ),
                                  ),
                                const PopupMenuItem<String>(
                                  value: 'report',
                                  child: Row(
                                    children: [
                                      Icon(Icons.flag_outlined, color: Colors.orange, size: 20),
                                      SizedBox(width: 8),
                                      Text('Report User', style: TextStyle(color: Colors.orange)),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                // 间距30
                const SliverToBoxAdapter(
                  child: SizedBox(height: 30),
                ),
                // 用户信息（当拉黑时显示提示）
                ValueListenableBuilder<bool>(
                  valueListenable: _isBlockedNotifier,
                  builder: (context, isBlocked, child) {
                    if (isBlocked) {
                      return SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.all(48.0),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.block,
                                  size: 80,
                                  color: Colors.grey,
                                ),
                                const SizedBox(height: 24),
                                const Text(
                                  'User Blocked',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  'You have blocked ${widget.userPost.userInfo.nickname}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black54,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 24),
                                ElevatedButton(
                                  onPressed: _showUnblockDialog,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFA496FA),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 32,
                                      vertical: 12,
                                    ),
                                  ),
                                  child: const Text(
                                    'Unblock User',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                    
                    // 正常显示用户信息
                    return SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        // 头像
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 3,
                            ),
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              widget.userPost.userInfo.avatar,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: Colors.grey[300],
                                  child: const Icon(Icons.person, size: 40),
                                );
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        // 用户名和性别
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                widget.userPost.userInfo.nickname,
                                style: const TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              _getGenderSymbol(widget.userPost.userInfo.gender),
                              style: const TextStyle(
                                fontSize: 24,
                                color: Color(0xFFFF6B9D),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        // Followers和Following
                        Row(
                          children: [
                            Text(
                              '$_followers',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(width: 4),
                            const Text(
                              'Followers',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                            const SizedBox(width: 24),
                            Text(
                              '$_following',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(width: 4),
                            const Text(
                              'Following',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                            const Spacer(),
                            // Follow按钮
                            ValueListenableBuilder<bool>(
                              valueListenable: _isFollowingNotifier,
                              builder: (context, isFollowing, child) {
                                return GestureDetector(
                                  onTap: _toggleFollow,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 24,
                                      vertical: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      gradient: isFollowing
                                          ? null
                                          : const LinearGradient(
                                              colors: [
                                                Color(0xFFA496FA),
                                                Color(0xFFFF6B9D),
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
                          ],
                        ),
                      ),
                    );
                  },
                ),
                // POST标题和图片网格（当拉黑时不显示）
                ValueListenableBuilder<bool>(
                  valueListenable: _isBlockedNotifier,
                  builder: (context, isBlocked, child) {
                    if (isBlocked) {
                      return const SliverToBoxAdapter(child: SizedBox.shrink());
                    }
                    
                    return SliverList(
                      delegate: SliverChildListDelegate([
                        // POST标题
                        Padding(
                          padding: const EdgeInsets.only(left: 24.0, top: 24.0, bottom: 16.0),
                          child: Image.asset(
                            'assets/zaly_post.webp',
                            height: 30,
                            fit: BoxFit.contain,
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                      ]),
                    );
                  },
                ),
                // 图片网格
                ValueListenableBuilder<bool>(
                  valueListenable: _isBlockedNotifier,
                  builder: (context, isBlocked, child) {
                    if (isBlocked) {
                      return const SliverToBoxAdapter(child: SizedBox.shrink());
                    }
                    
                    if (_imagePosts.isEmpty) {
                      return const SliverToBoxAdapter(
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(32.0),
                            child: Text(
                              'No posts yet',
                              style: TextStyle(color: Colors.black87),
                            ),
                          ),
                        ),
                      );
                    }
                    
                    return SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      sliver: SliverGrid(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          childAspectRatio: 0.75,
                        ),
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            final post = _imagePosts[index];
                            return _buildPostGridItem(post);
                          },
                          childCount: _imagePosts.length,
                        ),
                      ),
                    );
                  },
                ),
                // 底部间距
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).padding.bottom + 100,
                  ),
                ),
              ],
            ),
          ),
          // 浮动操作按钮（拉黑时隐藏）
          ValueListenableBuilder<bool>(
            valueListenable: _isBlockedNotifier,
            builder: (context, isBlocked, child) {
              if (isBlocked) {
                return const SizedBox.shrink();
              }
              
              return Positioned(
                right: 24,
                bottom: 100,
                child: IconButton(
                  icon: Image.asset(
                    'assets/zaly_talk.webp',
                    width: 66,
                    height: 66,
                    fit: BoxFit.contain,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ZalyChatScreen(
                          userId: widget.userPost.userId,
                          userName: widget.userPost.userInfo.nickname,
                          userAvatar: widget.userPost.userInfo.avatar,
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPostGridItem(Post post) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PostDetailScreen(
              post: post,
              userInfo: widget.userPost.userInfo,
              userId: widget.userPost.userId,
            ),
          ),
        );
      },
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              post.image!,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[300],
                  child: const Icon(Icons.error),
                );
              },
            ),
          ),
          // 标题覆盖层
          if (post.title.isNotEmpty)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.7),
                    ],
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Text(
                  post.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

