import 'package:shared_preferences/shared_preferences.dart';

class HugService {
  static const String _hugsKey = 'user_hugs';
  
  // 获取所有拥抱状态
  static Future<Set<String>> getHuggedPosts() async {
    final prefs = await SharedPreferences.getInstance();
    final huggedPostsJson = prefs.getStringList(_hugsKey) ?? [];
    return huggedPostsJson.toSet();
  }
  
  // 检查是否已拥抱
  static Future<bool> isHugged(String postId) async {
    final huggedPosts = await getHuggedPosts();
    return huggedPosts.contains(postId);
  }
  
  // 切换拥抱状态
  static Future<bool> toggleHug(String postId) async {
    final prefs = await SharedPreferences.getInstance();
    final huggedPosts = await getHuggedPosts();
    
    if (huggedPosts.contains(postId)) {
      huggedPosts.remove(postId);
    } else {
      huggedPosts.add(postId);
    }
    
    return await prefs.setStringList(_hugsKey, huggedPosts.toList());
  }
}

