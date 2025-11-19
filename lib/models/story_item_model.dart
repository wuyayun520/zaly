import 'user_post_model.dart';

class StoryItem {
  final String userId;
  final UserInfo userInfo;
  final Post post;

  StoryItem({
    required this.userId,
    required this.userInfo,
    required this.post,
  });
  
  String get uniquePostId => '${userId}_${post.postId}';
}

