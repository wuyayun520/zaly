import 'package:shared_preferences/shared_preferences.dart';

class NotInterestedService {
  static const String _notInterestedKey = 'not_interested_posts';

  // 获取所有不感兴趣的视频ID
  static Future<Set<String>> getNotInterestedPosts() async {
    final prefs = await SharedPreferences.getInstance();
    final notInterestedJson = prefs.getStringList(_notInterestedKey) ?? [];
    return notInterestedJson.toSet();
  }

  // 检查是否不感兴趣
  static Future<bool> isNotInterested(String postId) async {
    final notInterestedPosts = await getNotInterestedPosts();
    return notInterestedPosts.contains(postId);
  }

  // 标记为不感兴趣
  static Future<bool> markAsNotInterested(String postId) async {
    final prefs = await SharedPreferences.getInstance();
    final notInterestedPosts = await getNotInterestedPosts();
    
    notInterestedPosts.add(postId);
    return await prefs.setStringList(_notInterestedKey, notInterestedPosts.toList());
  }

  // 取消不感兴趣标记
  static Future<bool> removeNotInterested(String postId) async {
    final prefs = await SharedPreferences.getInstance();
    final notInterestedPosts = await getNotInterestedPosts();
    
    notInterestedPosts.remove(postId);
    return await prefs.setStringList(_notInterestedKey, notInterestedPosts.toList());
  }
}

