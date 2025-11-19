import 'dart:convert';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import '../models/user_post_item.dart';

class UserPostStorageService {
  static const String _postsKey = 'user_posts';
  static const String _postsDirectory = 'user_posts';

  // 获取帖子存储目录
  static Future<String> getPostsDirectory() async {
    final dir = await getApplicationDocumentsDirectory();
    final postsDir = Directory('${dir.path}/$_postsDirectory');
    if (!await postsDir.exists()) {
      await postsDir.create(recursive: true);
    }
    return postsDir.path;
  }

  // 保存图片到沙盒
  static Future<String?> savePostImage(File imageFile) async {
    try {
      final dir = await getPostsDirectory();
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final fileName = 'post_image_$timestamp.jpg';
      final targetPath = '$dir/$fileName';
      
      await imageFile.copy(targetPath);
      return fileName; // 只返回文件名，不返回完整路径
    } catch (e) {
      print('Error saving post image: $e');
      return null;
    }
  }

  // 获取图片完整路径
  static Future<String?> getPostImagePath(String fileName) async {
    final dir = await getPostsDirectory();
    final imagePath = '$dir/$fileName';
    final file = File(imagePath);
    
    if (await file.exists()) {
      return imagePath;
    }
    
    return null;
  }

  // 获取所有帖子
  static Future<List<UserPostItem>> getAllPosts() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final postsJson = prefs.getString(_postsKey);
      
      if (postsJson == null || postsJson.isEmpty) {
        return [];
      }
      
      final List<dynamic> jsonList = json.decode(postsJson);
      return jsonList.map((json) => UserPostItem.fromJson(json as Map<String, dynamic>)).toList();
    } catch (e) {
      print('Error loading posts: $e');
      return [];
    }
  }

  // 保存帖子
  static Future<bool> savePost(UserPostItem post) async {
    try {
      final posts = await getAllPosts();
      posts.insert(0, post); // 新帖子添加到最前面
      
      final prefs = await SharedPreferences.getInstance();
      final jsonList = posts.map((p) => p.toJson()).toList();
      final jsonString = json.encode(jsonList);
      
      return await prefs.setString(_postsKey, jsonString);
    } catch (e) {
      print('Error saving post: $e');
      return false;
    }
  }

  // 删除帖子
  static Future<bool> deletePost(String postId) async {
    try {
      final posts = await getAllPosts();
      posts.removeWhere((post) => post.id == postId);
      
      final prefs = await SharedPreferences.getInstance();
      final jsonList = posts.map((p) => p.toJson()).toList();
      final jsonString = json.encode(jsonList);
      
      return await prefs.setString(_postsKey, jsonString);
    } catch (e) {
      print('Error deleting post: $e');
      return false;
    }
  }
}

