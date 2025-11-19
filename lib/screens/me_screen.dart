import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import '../services/user_profile_service.dart';
import '../services/user_post_storage_service.dart';
import '../models/user_post_item.dart';
import 'privacy_policy_screen.dart';
import 'terms_of_service_screen.dart';
import 'post_story_screen.dart';
import 'my_post_detail_screen.dart';
import 'about_screen.dart';

class MeScreen extends StatefulWidget {
  const MeScreen({super.key});

  @override
  State<MeScreen> createState() => _MeScreenState();

  static final GlobalKey<_MeScreenState> globalKey = GlobalKey<_MeScreenState>();

  static void refresh() {
    globalKey.currentState?._loadPosts();
  }
}

class _MeScreenState extends State<MeScreen> with WidgetsBindingObserver {
  String _name = 'UserName';
  String _bio = 'Hoping to find a resonant voice...';
  String _gender = '♀';
  String? _avatarPath;
  final ImagePicker _imagePicker = ImagePicker();
  List<UserPostItem> _posts = [];
  bool _isFirstLoad = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _loadProfile();
    _loadPosts();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // 应用从后台返回前台时刷新
      _loadPosts();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 页面重新显示时刷新帖子（避免第一次加载时重复）
    if (!_isFirstLoad) {
      _loadPosts();
    } else {
      _isFirstLoad = false;
    }
  }

  Future<void> _loadProfile() async {
    final name = await UserProfileService.getName();
    final bio = await UserProfileService.getBio();
    final gender = await UserProfileService.getGender();
    final avatarPath = await UserProfileService.getAvatarPath();

    setState(() {
      _name = name;
      _bio = bio;
      _gender = gender;
      _avatarPath = avatarPath;
    });
  }

  Future<void> _loadPosts() async {
    final posts = await UserPostStorageService.getAllPosts();
    if (mounted) {
      setState(() {
        _posts = posts;
      });
    }
  }

  Future<void> _editAvatar() async {
    try {
      final XFile? pickedFile = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 85,
      );

      if (pickedFile != null) {
        final file = File(pickedFile.path);
        final savedPath = await UserProfileService.saveAvatar(file);
        
        if (savedPath != null && mounted) {
          setState(() {
            _avatarPath = savedPath;
          });
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Avatar updated successfully'),
              backgroundColor: Colors.green,
              duration: Duration(seconds: 2),
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error picking image: $e'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  Future<void> _editName() async {
    final TextEditingController controller = TextEditingController(text: _name);
    
    final result = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Edit Name'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: 'Enter your name',
            border: OutlineInputBorder(),
          ),
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(controller.text.trim()),
            child: const Text('Save'),
          ),
        ],
      ),
    );

    if (result != null && result.isNotEmpty && mounted) {
      await UserProfileService.saveName(result);
      setState(() {
        _name = result;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Name updated successfully'),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  Future<void> _editBio() async {
    final TextEditingController controller = TextEditingController(text: _bio);
    
    final result = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Edit Bio'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: 'Enter your bio',
            border: OutlineInputBorder(),
          ),
          autofocus: true,
          maxLines: 3,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(controller.text.trim()),
            child: const Text('Save'),
          ),
        ],
      ),
    );

    if (result != null && mounted) {
      await UserProfileService.saveBio(result);
      setState(() {
        _bio = result;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Bio updated successfully'),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
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
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Profile Header
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Avatar
                            GestureDetector(
                              onTap: _editAvatar,
                              child: Container(
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
                                  child: _avatarPath != null
                                      ? Image.file(
                                          File(_avatarPath!),
                                          fit: BoxFit.cover,
                                          errorBuilder: (context, error, stackTrace) {
                                            return Image.asset(
                                              'assets/stackMaterializer/0000/usericon.webp',
                                              fit: BoxFit.cover,
                                              errorBuilder: (context, error, stackTrace) {
                                                return Container(
                                                  color: Colors.grey[300],
                                                  child: const Icon(Icons.person, size: 40),
                                                );
                                              },
                                            );
                                          },
                                        )
                                      : Image.asset(
                                          'assets/stackMaterializer/0000/usericon.webp',
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
                            ),
                            const SizedBox(width: 16),
                            // Name and Info
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: _editName,
                                    child: Row(
                                      children: [
                                        Flexible(
                                          child: Text(
                                            _name,
                                            style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          _gender,
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFFFF6B9D),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  GestureDetector(
                                    onTap: _editBio,
                                    child: Text(
                                      _bio,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  // Statistics
                                  Row(
                                    children: [
                                      _buildStatItem('follower', '0'),
                                      const SizedBox(width: 32),
                                      _buildStatItem('following', '0'),
                                      const SizedBox(width: 32),
                                      _buildStatItem('like', '0'),
                                    ],
                                  ),
                                  const SizedBox(height: 32),
                                  // POST Button
                                  Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                      onTap: () async {
                                        final result = await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const PostStoryScreen(),
                                          ),
                                        );
                                        // 如果成功发布，重新加载帖子
                                        if (result == true) {
                                          _loadPosts();
                                        }
                                      },
                                      child: Image.asset(
                                        'assets/zaly_post.webp',
                                        height: 30,
                                        fit: BoxFit.contain,
                                        errorBuilder: (context, error, stackTrace) {
                                          return Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 32,
                                              vertical: 12,
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF5D37FF),
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            child: const Text(
                                              'POST',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 32),
                        // Main Content Row
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Left Menu
                            Transform.translate(
                              offset: const Offset(-24, 0), // 抵消左侧padding
                              child: SizedBox(
                                width: 146,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Menu Items
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const PrivacyPolicyScreen(),
                                          ),
                                        );
                                      },
                                      child: Image.asset(
                                        'assets/zaly_me_privacy_policy.webp',
                                        fit: BoxFit.contain,
                                        alignment: Alignment.centerLeft,
                                        errorBuilder: (context, error, stackTrace) {
                                          return _buildMenuButton(
                                            icon: Icons.lock_outline,
                                            text: 'Privacy Policy',
                                          );
                                        },
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const TermsOfServiceScreen(),
                                          ),
                                        );
                                      },
                                      child: Image.asset(
                                        'assets/zaly_me_user_agreement.webp',
                                        fit: BoxFit.contain,
                                        alignment: Alignment.centerLeft,
                                        errorBuilder: (context, error, stackTrace) {
                                          return _buildMenuButton(
                                            icon: Icons.description_outlined,
                                            text: 'User Agreement',
                                          );
                                        },
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const AboutScreen(),
                                          ),
                                        );
                                      },
                                      child: Image.asset(
                                        'assets/zaly_me_about_us.webp',
                                        fit: BoxFit.contain,
                                        alignment: Alignment.centerLeft,
                                        errorBuilder: (context, error, stackTrace) {
                                          return _buildMenuButton(
                                            icon: Icons.person_outline,
                                            text: 'About us',
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            // Right Content - Image Grid
                            Expanded(
                              child: SizedBox(
                                height: constraints.maxHeight > 0 
                                    ? constraints.maxHeight - 150 // 减去顶部内容的大概高度
                                    : MediaQuery.of(context).size.height - 350,
                                child: _posts.isEmpty
                                    ? Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.image_outlined,
                                              size: 64,
                                              color: Colors.grey[400],
                                            ),
                                            const SizedBox(height: 16),
                                            Text(
                                              'No posts yet',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.grey[600],
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              'Tap POST to share your story',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey[500],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    : GridView.builder(
                                        shrinkWrap: false,
                                        physics: const AlwaysScrollableScrollPhysics(),
                                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 1,
                                          mainAxisSpacing: 12,
                                          crossAxisSpacing: 12,
                                          childAspectRatio: 0.75,
                                        ),
                                        itemCount: _posts.length,
                                        itemBuilder: (context, index) {
                                          final post = _posts[index];
                                          return _buildPostItem(post);
                                        },
                                      ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: MediaQuery.of(context).padding.bottom + 100),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }

  Widget _buildMenuButton({
    required IconData icon,
    required String text,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFFF6B9D).withOpacity(0.3),
          width: 1.5,
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFFF6B9D),
            size: 20,
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPostItem(UserPostItem post) {
    return FutureBuilder<String?>(
      future: post.imagePath != null
          ? UserPostStorageService.getPostImagePath(post.imagePath!)
          : Future.value(null),
      builder: (context, snapshot) {
        final imagePath = snapshot.data;
        
        return GestureDetector(
          onTap: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyPostDetailScreen(post: post),
              ),
            );
            // 如果删除了帖子，刷新列表
            if (result == true) {
              _loadPosts();
            }
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              fit: StackFit.expand,
              children: [
                if (imagePath != null)
                  Image.file(
                    File(imagePath),
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return _buildPostPlaceholder(post);
                    },
                  )
                else
                  _buildPostPlaceholder(post),
                // 如果有文字，显示在底部
                if (post.text != null && post.text!.isNotEmpty)
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.7),
                          ],
                        ),
                      ),
                      child: Text(
                        post.text!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildPostPlaceholder(UserPostItem post) {
    return Container(
      color: Colors.grey[200],
      child: post.text != null && post.text!.isNotEmpty
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  post.text!,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          : const Center(
              child: Icon(
                Icons.image_outlined,
                size: 40,
                color: Colors.grey,
              ),
            ),
    );
  }
}
