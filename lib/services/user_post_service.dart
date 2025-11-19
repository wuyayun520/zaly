import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/user_post_model.dart';

class UserPostService {
  static Future<List<UserPost>> loadAllUserPosts() async {
    final List<UserPost> userPosts = [];
    
    final userDirs = [
      '1111', '1110', '1101', '1100',
      '1011', '1010', '1001', '1000',
      '0111', '0110', '0101', '0100',
      '0011', '0010', '0001', '0000',
    ];

    for (final dir in userDirs) {
      try {
        final jsonString = await rootBundle.loadString(
          'assets/stackMaterializer/$dir/user_data.json',
        );
        final jsonData = json.decode(jsonString) as Map<String, dynamic>;
        final userPost = UserPost.fromJson(jsonData);
        
        if (userPost.firstImagePost.image != null) {
          userPosts.add(userPost);
        }
      } catch (e) {
        print('Error loading user data from $dir: $e');
      }
    }

    return userPosts;
  }
}

