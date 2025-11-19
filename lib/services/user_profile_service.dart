import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

class UserProfileService {
  static const String _nameKey = 'user_profile_name';
  static const String _bioKey = 'user_profile_bio';
  static const String _genderKey = 'user_profile_gender';
  static const String _avatarFileNameKey = 'user_profile_avatar_filename';
  static const String _defaultName = 'Darlene Beats';
  static const String _defaultBio = 'Hoping to find a resonant voice...';
  static const String _defaultGender = '♀';

  // 获取沙盒路径
  static Future<String> getDocumentsDirectory() async {
    final dir = await getApplicationDocumentsDirectory();
    final profileDir = Directory('${dir.path}/user_profile');
    if (!await profileDir.exists()) {
      await profileDir.create(recursive: true);
    }
    return profileDir.path;
  }

  // 获取头像路径
  static Future<String?> getAvatarPath() async {
    final prefs = await SharedPreferences.getInstance();
    final avatarFileName = prefs.getString(_avatarFileNameKey);
    
    if (avatarFileName == null || avatarFileName.isEmpty) {
      return null;
    }
    
    final dir = await getDocumentsDirectory();
    final avatarPath = '$dir/$avatarFileName';
    final file = File(avatarPath);
    
    if (await file.exists()) {
      return avatarPath;
    }
    
    return null;
  }

  // 保存头像
  static Future<String?> saveAvatar(File imageFile) async {
    try {
      final dir = await getDocumentsDirectory();
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final fileName = 'avatar_$timestamp.jpg';
      final targetPath = '$dir/$fileName';
      
      await imageFile.copy(targetPath);
      
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_avatarFileNameKey, fileName);
      
      return targetPath;
    } catch (e) {
      print('Error saving avatar: $e');
      return null;
    }
  }

  // 获取名称
  static Future<String> getName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_nameKey) ?? _defaultName;
  }

  // 保存名称
  static Future<bool> saveName(String name) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.setString(_nameKey, name);
  }

  // 获取签名
  static Future<String> getBio() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_bioKey) ?? _defaultBio;
  }

  // 保存签名
  static Future<bool> saveBio(String bio) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.setString(_bioKey, bio);
  }

  // 获取性别
  static Future<String> getGender() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_genderKey) ?? _defaultGender;
  }

  // 保存性别
  static Future<bool> saveGender(String gender) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.setString(_genderKey, gender);
  }
}

