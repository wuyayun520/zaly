import 'package:flutter/material.dart';
import '../models/user_post_model.dart';
import '../theme/app_theme.dart';
import '../services/follow_service.dart';
import '../services/hug_service.dart';
import '../services/report_service.dart';
import 'zaly_chat_screen.dart';

class PostDetailScreen extends StatefulWidget {
  final Post post;
  final UserInfo userInfo;
  final String userId;

  const PostDetailScreen({
    super.key,
    required this.post,
    required this.userInfo,
    required this.userId,
  });

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  final ValueNotifier<bool> _isFollowingNotifier = ValueNotifier<bool>(false);
  final ValueNotifier<bool> _isHuggedNotifier = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _loadFollowStatus();
    _loadHugStatus();
  }

  @override
  void dispose() {
    _isFollowingNotifier.dispose();
    _isHuggedNotifier.dispose();
    super.dispose();
  }

  Future<void> _loadFollowStatus() async {
    final isFollowing = await FollowService.isFollowing(widget.userId);
    _isFollowingNotifier.value = isFollowing;
  }

  Future<void> _toggleFollow() async {
    await FollowService.toggleFollow(widget.userId);
    final newStatus = await FollowService.isFollowing(widget.userId);
    _isFollowingNotifier.value = newStatus;
  }

  Future<void> _loadHugStatus() async {
    final uniquePostId = '${widget.userId}_${widget.post.postId}';
    final isHugged = await HugService.isHugged(uniquePostId);
    _isHuggedNotifier.value = isHugged;
  }

  Future<void> _toggleHug() async {
    final uniquePostId = '${widget.userId}_${widget.post.postId}';
    await HugService.toggleHug(uniquePostId);
    final newStatus = await HugService.isHugged(uniquePostId);
    _isHuggedNotifier.value = newStatus;
    
    // 显示提示信息
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            newStatus ? 'You gave a hug! 🤗' : 'Hug removed',
          ),
          duration: const Duration(seconds: 1),
          backgroundColor: const Color(0xFFFF6B9D),
        ),
      );
    }
  }

  Future<void> _showReportDialog() async {
    final uniquePostId = '${widget.userId}_${widget.post.postId}';
    final isReported = await ReportService.isReported(uniquePostId);
    
    if (isReported) {
      // 如果已经举报过，显示提示
      if (mounted) {
        final reason = await ReportService.getReportReason(uniquePostId);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('You have already reported this post${reason != null ? ': $reason' : ''}'),
            duration: const Duration(seconds: 2),
          ),
        );
      }
      return;
    }
    
    // 举报选项
    final reportReasons = [
      'Spam',
      'Inappropriate content',
      'Harassment or bullying',
      'False information',
      'Violence or dangerous content',
      'Other',
    ];
    
    String? selectedReason;
    
    // 显示选择举报原因的对话框
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setDialogState) => AlertDialog(
          title: const Text(
            'Report Post',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          content: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Why are you reporting this post?',
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
      await ReportService.reportPost(uniquePostId, selectedReason!);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Post reported. Thank you for your feedback.'),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.green,
        ),
      );
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
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black87),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  actions: [
                    PopupMenuButton<String>(
                      icon: const Icon(Icons.more_vert, color: Colors.black87),
                      onSelected: (value) {
                        if (value == 'report') {
                          _showReportDialog();
                        }
                      },
                      itemBuilder: (context) => [
                        const PopupMenuItem<String>(
                          value: 'report',
                          child: Row(
                            children: [
                              Icon(Icons.flag_outlined, color: Colors.red, size: 20),
                              SizedBox(width: 8),
                              Text(
                                'Report',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 帖子图片或视频封面
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: widget.post.image != null
                              ? Image.asset(
                                  widget.post.image!,
                                  width: double.infinity,
                                  height: 400,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      height: 400,
                                      color: Colors.grey[300],
                                      child: const Center(
                                        child: Icon(Icons.error, size: 50),
                                      ),
                                    );
                                  },
                                )
                              : Container(
                                  height: 400,
                                  color: Colors.grey[300],
                                  child: const Center(
                                    child: Icon(Icons.videocam, size: 50),
                                  ),
                                ),
                        ),
                        const SizedBox(height: 20),
                        // 用户信息
                        Row(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                widget.userInfo.avatar,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    width: 50,
                                    height: 50,
                                    color: Colors.grey[300],
                                    child: const Icon(Icons.person),
                                  );
                                },
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                widget.userInfo.nickname,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            ValueListenableBuilder<bool>(
                              valueListenable: _isFollowingNotifier,
                              builder: (context, isFollowing, child) {
                                return GestureDetector(
                                  onTap: _toggleFollow,
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
                        const SizedBox(height: 24),
                        // 标题
                        Text(
                          widget.post.title,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            height: 1.3,
                          ),
                        ),
                        const SizedBox(height: 16),
                        // 正文内容
                        Text(
                          widget.post.content,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            height: 1.6,
                          ),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // 底部按钮
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Container(
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0.0),
                      Colors.white,
                    ],
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: ValueListenableBuilder<bool>(
                        valueListenable: _isHuggedNotifier,
                        builder: (context, isHugged, child) {
                          return GestureDetector(
                            onTap: _toggleHug,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              decoration: BoxDecoration(
                                gradient: isHugged
                                    ? null
                                    : const LinearGradient(
                                        colors: [
                                          Color(0xFFFF6B9D),
                                          Color(0xFFFF8FA3),
                                        ],
                                      ),
                                color: isHugged ? Colors.grey[300] : null,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/zaly_home_hug.webp',
                                    width: 30,
                                    height: 30,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    isHugged ? 'Hugged' : 'Give a hug',
                                    style: TextStyle(
                                      color: isHugged ? Colors.black87 : Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ZalyChatScreen(
                                userId: widget.userId,
                                userName: widget.userInfo.nickname,
                                userAvatar: widget.userInfo.avatar,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                AppTheme.primaryColor,
                                AppTheme.primaryColor.withOpacity(0.7),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/zaly_home_comment.webp',
                                width: 30,
                                height: 30,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'Say hi',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

