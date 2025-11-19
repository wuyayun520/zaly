import 'package:shared_preferences/shared_preferences.dart';

class BlockService {
  static const String _blockedUsersKey = 'blocked_users';

  // 获取所有被拉黑的用户ID
  static Future<Set<String>> getBlockedUsers() async {
    final prefs = await SharedPreferences.getInstance();
    final blockedUsersJson = prefs.getStringList(_blockedUsersKey) ?? [];
    return blockedUsersJson.toSet();
  }

  // 检查用户是否被拉黑
  static Future<bool> isBlocked(String userId) async {
    final blockedUsers = await getBlockedUsers();
    return blockedUsers.contains(userId);
  }

  // 拉黑用户
  static Future<bool> blockUser(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final blockedUsers = await getBlockedUsers();
    
    blockedUsers.add(userId);
    return await prefs.setStringList(_blockedUsersKey, blockedUsers.toList());
  }

  // 取消拉黑
  static Future<bool> unblockUser(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final blockedUsers = await getBlockedUsers();
    
    blockedUsers.remove(userId);
    return await prefs.setStringList(_blockedUsersKey, blockedUsers.toList());
  }
}

