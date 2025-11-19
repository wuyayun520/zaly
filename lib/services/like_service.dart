import 'package:shared_preferences/shared_preferences.dart';

class LikeService {
  static const String _likesKey = 'user_likes';
  
  // 获取所有点赞状态
  static Future<Set<String>> getLikedPosts() async {
    final prefs = await SharedPreferences.getInstance();
    final likedPostsJson = prefs.getStringList(_likesKey) ?? [];
    return likedPostsJson.toSet();
  }
  
  // 检查是否已点赞
  static Future<bool> isLiked(String postId) async {
    final likedPosts = await getLikedPosts();
    return likedPosts.contains(postId);
  }
  
  // 切换点赞状态
  static Future<bool> toggleLike(String postId) async {
    final prefs = await SharedPreferences.getInstance();
    final likedPosts = await getLikedPosts();
    
    if (likedPosts.contains(postId)) {
      likedPosts.remove(postId);
    } else {
      likedPosts.add(postId);
    }
    
    return await prefs.setStringList(_likesKey, likedPosts.toList());
  }
  
  // 获取点赞数量（原始数量 + 本地点赞）
  static Future<int> getLikeCount(String postId, int originalLikes) async {
    // 如果已点赞，显示原始数量+1；如果取消点赞，显示原始数量-1
    // 但为了简单，我们只显示原始数量，或者可以根据需要调整
    return originalLikes;
  }
}

