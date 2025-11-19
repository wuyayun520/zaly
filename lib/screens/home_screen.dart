import 'package:flutter/material.dart';
import 'me_screen.dart';
import 'post_story_screen.dart';
import 'post_detail_screen.dart';
import '../models/user_post_model.dart';
import '../models/story_item_model.dart';
import '../services/user_post_service.dart';
import '../services/like_service.dart';
import '../theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<UserPost> _userPosts = [];
  List<StoryItem> _storyItems = [];
  bool _isLoading = true;
  late PageController _pageController;
  Set<String> _likedPosts = {};
  final ValueNotifier<Set<String>> _likedPostsNotifier = ValueNotifier<Set<String>>({});

  @override
  void initState() {
    super.initState();
    _loadUserPosts();
    _loadLikedPosts();
    _pageController = PageController(
      viewportFraction: 0.75,
    );
  }
  
  Future<void> _loadLikedPosts() async {
    final likedPosts = await LikeService.getLikedPosts();
    setState(() {
      _likedPosts = likedPosts;
      _likedPostsNotifier.value = likedPosts;
    });
  }
  
  Future<void> _toggleLike(String postId) async {
    await LikeService.toggleLike(postId);
    setState(() {
      if (_likedPosts.contains(postId)) {
        _likedPosts.remove(postId);
      } else {
        _likedPosts.add(postId);
      }
      _likedPostsNotifier.value = Set<String>.from(_likedPosts);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _likedPostsNotifier.dispose();
    super.dispose();
  }

  Future<void> _loadUserPosts() async {
    try {
      final posts = await UserPostService.loadAllUserPosts();
      
      // 收集所有用户的其他图片帖子
      List<StoryItem> stories = [];
      for (var userPost in posts) {
        for (var post in userPost.otherImagePosts) {
          stories.add(StoryItem(
            userId: userPost.userId,
            userInfo: userPost.userInfo,
            post: post,
          ));
        }
      }
      
      setState(() {
        _userPosts = posts;
        _storyItems = stories;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    final bottomNavBarHeight = 70.0;
    final bottomNavBarMargin = 48.0;
    final totalBottomSpace = bottomPadding + bottomNavBarHeight + bottomNavBarMargin + 20;
    
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/zaly_allbg.webp',
          fit: BoxFit.cover,
        ),
        CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverSafeArea(
              bottom: false,
              sliver: SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/zaly_home_resonance.webp',
                        height: 50,
                        fit: BoxFit.contain,
                      ),
                      GestureDetector(
                        onTap: () async {
                          final result = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PostStoryScreen(),
                            ),
                          );
                          // 如果发布成功，刷新 MeScreen（如果用户切换到 MeScreen 时会自动刷新）
                          if (result == true) {
                            // 延迟一下，确保数据已保存
                            await Future.delayed(const Duration(milliseconds: 300));
                            // 通知 MeScreen 刷新（如果它已经创建）
                            MeScreen.refresh();
                          }
                        },
                        child: Image.asset(
                          'assets/zaly_home_post.webp',
                          height: 60,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
                  child: SizedBox(
                    height: 320,
                    child: _isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : _userPosts.isEmpty
                            ? const Center(child: Text('No posts available'))
                            : PageView.builder(
                                itemCount: _userPosts.length,
                                controller: _pageController,
                                itemBuilder: (context, index) {
                                  return _buildAnimatedPostCard(
                                    _userPosts[index],
                                    index,
                                  );
                                },
                              ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 16.0, bottom: 16.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'assets/zaly_home_emotional.webp',
                        height: 30,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                _isLoading
                    ? const SliverToBoxAdapter(child: SizedBox())
                    : _storyItems.isEmpty
                        ? const SliverToBoxAdapter(
                            child: Center(child: Text('No stories available')))
                        : SliverPadding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            sliver: SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (context, index) {
                                  return _buildStoryCard(_storyItems[index]);
                                },
                                childCount: _storyItems.length,
                              ),
                            ),
                          ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: totalBottomSpace,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAnimatedPostCard(UserPost userPost, int index) {
    return AnimatedBuilder(
      animation: Listenable.merge([_pageController, _likedPostsNotifier]),
      builder: (context, child) {
        final currentLikedPosts = _likedPostsNotifier.value;
        
        if (!_pageController.position.haveDimensions) {
          return _buildPostCard(userPost, currentLikedPosts);
        }

        double page = _pageController.page ?? 0.0;
        double value = (index - page).abs();
        
        double scale = value > 0.5 ? 0.9 : 1.0 - (value * 0.2);
        double opacity = value > 0.5 ? 0.6 : 1.0 - (value * 0.8);

        return Transform.scale(
          scale: scale.clamp(0.9, 1.0),
          child: Opacity(
            opacity: opacity.clamp(0.6, 1.0),
            child: _buildPostCard(userPost, currentLikedPosts),
          ),
        );
      },
    );
  }

  Widget _buildPostCard(UserPost userPost, Set<String> likedPosts) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PostDetailScreen(
                post: userPost.firstImagePost,
                userInfo: userPost.userInfo,
                userId: userPost.userId,
              ),
            ),
          );
        },
        child: SizedBox(
          width: 266,
          height: 320,
          child: Card(
          elevation: 12,
          shadowColor: Colors.black.withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: [
              Image.asset(
                userPost.firstImagePost.image!,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[300],
                    child: const Center(
                      child: Icon(Icons.error, size: 50),
                    ),
                  );
                },
              ),
              Positioned(
                top: 16,
                right: 16,
                child: GestureDetector(
                  onTap: () => _toggleLike('${userPost.userId}_${userPost.firstImagePost.postId}'),
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      likedPosts.contains('${userPost.userId}_${userPost.firstImagePost.postId}')
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: likedPosts.contains('${userPost.userId}_${userPost.firstImagePost.postId}')
                          ? Colors.red
                          : Colors.grey,
                      size: 24,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        AppTheme.primaryColor.withOpacity(0.9),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        userPost.firstImagePost.content,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.4,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }

  Widget _buildStoryCard(StoryItem storyItem) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PostDetailScreen(
              post: storyItem.post,
              userInfo: storyItem.userInfo,
              userId: storyItem.userId,
            ),
          ),
        );
      },
      child: Container(
      margin: const EdgeInsets.only(bottom: 16),
      height: 190,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/zaly_home_card_bg.webp'),
          fit: BoxFit.cover,
        ),
        // borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Transform.translate(
                  offset: const Offset(10, 0),
                  child: SizedBox(
                    width: 140,
                    height: 166,
                    child: Stack(
                      children: [
                        Container(
                          width: 140,
                          height: 156,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              storyItem.post.image!,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: Colors.grey[300],
                                  child: const Icon(Icons.error),
                                );
                              },
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 6,
                          right: 6,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 22,
                                height: 22,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    storyItem.userInfo.avatar,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        color: Colors.grey[300],
                                        child: const Icon(Icons.person, size: 10),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(width: 6),
                              Flexible(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 6,
                                    vertical: 3,
                                  ),
                                  child: Text(
                                    storyItem.userInfo.nickname,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 32),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      storyItem.post.content,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 12,
            right: 12,
            child: ValueListenableBuilder<Set<String>>(
              valueListenable: _likedPostsNotifier,
              builder: (context, likedPosts, child) {
                return GestureDetector(
                  onTap: () => _toggleLike(storyItem.uniquePostId),
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        likedPosts.contains(storyItem.uniquePostId)
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: const Color(0xFFFF6B9D),
                        size: 20,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      ),
    );
  }
}

