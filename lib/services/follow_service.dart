import 'package:shared_preferences/shared_preferences.dart';

class FollowService {
  static const String _followsKey = 'user_follows';
  
  // 获取所有关注状态
  static Future<Set<String>> getFollowedUsers() async {
    final prefs = await SharedPreferences.getInstance();
    final followedUsersJson = prefs.getStringList(_followsKey) ?? [];
    return followedUsersJson.toSet();
  }
  
  // 检查是否已关注
  static Future<bool> isFollowing(String userId) async {
    final followedUsers = await getFollowedUsers();
    return followedUsers.contains(userId);
  }
  
  // 切换关注状态
  static Future<bool> toggleFollow(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final followedUsers = await getFollowedUsers();
    
    if (followedUsers.contains(userId)) {
      followedUsers.remove(userId);
    } else {
      followedUsers.add(userId);
    }
    
    return await prefs.setStringList(_followsKey, followedUsers.toList());
  }
}

