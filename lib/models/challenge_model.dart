class Challenge {
  final String id;
  final String title;
  final String description;
  final String category;
  final int durationDays;
  final List<String> tasks;
  final DateTime createdAt;
  final bool isCompleted;

  Challenge({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.durationDays,
    required this.tasks,
    required this.createdAt,
    this.isCompleted = false,
  });

  Challenge copyWith({
    String? id,
    String? title,
    String? description,
    String? category,
    int? durationDays,
    List<String>? tasks,
    DateTime? createdAt,
    bool? isCompleted,
  }) {
    return Challenge(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      category: category ?? this.category,
      durationDays: durationDays ?? this.durationDays,
      tasks: tasks ?? this.tasks,
      createdAt: createdAt ?? this.createdAt,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}

class ChallengeResponse {
  final String challengeId;
  final String userId;
  final String content;
  final DateTime createdAt;
  final List<String> images;
  final int likes;
  final List<String> comments;

  ChallengeResponse({
    required this.challengeId,
    required this.userId,
    required this.content,
    required this.createdAt,
    this.images = const [],
    this.likes = 0,
    this.comments = const [],
  });
}

