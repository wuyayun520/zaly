class UserPost {
  final String userId;
  final UserInfo userInfo;
  final Post firstImagePost;
  final List<Post> allPosts;

  UserPost({
    required this.userId,
    required this.userInfo,
    required this.firstImagePost,
    required this.allPosts,
  });

  factory UserPost.fromJson(Map<String, dynamic> json) {
    final posts = (json['posts'] as List<dynamic>)
        .map((post) => Post.fromJson(post))
        .toList();
    
    final firstImagePost = posts.firstWhere(
      (post) => post.type == 'emotion_share' && post.image != null,
      orElse: () => posts.first,
    );

    return UserPost(
      userId: json['userId'] as String,
      userInfo: UserInfo.fromJson(json['userInfo'] as Map<String, dynamic>),
      firstImagePost: firstImagePost,
      allPosts: posts,
    );
  }
  
  List<Post> get otherImagePosts {
    return allPosts.where((post) => 
      post.image != null && 
      post.postId != firstImagePost.postId
    ).toList();
  }
}

class UserInfo {
  final String avatar;
  final String nickname;
  final int age;
  final String gender;
  final String location;
  final String description;

  UserInfo({
    required this.avatar,
    required this.nickname,
    required this.age,
    required this.gender,
    required this.location,
    required this.description,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      avatar: json['avatar'] as String,
      nickname: json['nickname'] as String,
      age: json['age'] as int,
      gender: json['gender'] as String,
      location: json['location'] as String,
      description: json['description'] as String,
    );
  }
}

class Post {
  final String postId;
  final String? image;
  final String? video;
  final String type;
  final String title;
  final String content;
  final String emotion;
  final int likes;

  Post({
    required this.postId,
    this.image,
    this.video,
    required this.type,
    required this.title,
    required this.content,
    required this.emotion,
    required this.likes,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      postId: json['postId'] as String,
      image: json['image'] as String?,
      video: json['video'] as String?,
      type: json['type'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      emotion: json['emotion'] as String,
      likes: json['likes'] as int,
    );
  }
}

