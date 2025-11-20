class Challenge {
  final String id;
  final String title;
  final String description;
  final String category;
  final int durationDays;
  final List<String> tasks;
  final DateTime createdAt;
  final bool isCompleted;
  final String icon;
  final String color;

  Challenge({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.durationDays,
    required this.tasks,
    required this.createdAt,
    this.isCompleted = false,
    this.icon = '🎯',
    this.color = '#FF6B9D',
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
    String? icon,
    String? color,
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
      icon: icon ?? this.icon,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'category': category,
      'durationDays': durationDays,
      'tasks': tasks,
      'createdAt': createdAt.toIso8601String(),
      'isCompleted': isCompleted,
      'icon': icon,
      'color': color,
    };
  }

  factory Challenge.fromJson(Map<String, dynamic> json) {
    return Challenge(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      durationDays: json['durationDays'] as int,
      tasks: (json['tasks'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      isCompleted: json['isCompleted'] as bool? ?? false,
      icon: json['icon'] as String? ?? '🎯',
      color: json['color'] as String? ?? '#FF6B9D',
    );
  }
}

class ChallengeProgress {
  final String challengeId;
  final DateTime startDate;
  final Map<int, bool> completedDays; // day number -> completed
  final int currentStreak;
  final int longestStreak;
  final List<String> earnedBadges;

  ChallengeProgress({
    required this.challengeId,
    required this.startDate,
    this.completedDays = const {},
    this.currentStreak = 0,
    this.longestStreak = 0,
    this.earnedBadges = const [],
  });

  int get totalCompletedDays => completedDays.values.where((v) => v).length;
  
  double getProgressPercentage(int totalDays) {
    return totalCompletedDays / totalDays;
  }

  Map<String, dynamic> toJson() {
    return {
      'challengeId': challengeId,
      'startDate': startDate.toIso8601String(),
      'completedDays': completedDays.map((k, v) => MapEntry(k.toString(), v)),
      'currentStreak': currentStreak,
      'longestStreak': longestStreak,
      'earnedBadges': earnedBadges,
    };
  }

  factory ChallengeProgress.fromJson(Map<String, dynamic> json) {
    final completedDaysJson = json['completedDays'] as Map<String, dynamic>?;
    final completedDays = completedDaysJson?.map(
      (k, v) => MapEntry(int.parse(k), v as bool),
    ) ?? <int, bool>{};

    return ChallengeProgress(
      challengeId: json['challengeId'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      completedDays: completedDays,
      currentStreak: json['currentStreak'] as int? ?? 0,
      longestStreak: json['longestStreak'] as int? ?? 0,
      earnedBadges: (json['earnedBadges'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ?? [],
    );
  }

  ChallengeProgress copyWith({
    String? challengeId,
    DateTime? startDate,
    Map<int, bool>? completedDays,
    int? currentStreak,
    int? longestStreak,
    List<String>? earnedBadges,
  }) {
    return ChallengeProgress(
      challengeId: challengeId ?? this.challengeId,
      startDate: startDate ?? this.startDate,
      completedDays: completedDays ?? this.completedDays,
      currentStreak: currentStreak ?? this.currentStreak,
      longestStreak: longestStreak ?? this.longestStreak,
      earnedBadges: earnedBadges ?? this.earnedBadges,
    );
  }
}

class ChallengeBadge {
  final String id;
  final String name;
  final String description;
  final String icon;
  final BadgeType type;

  ChallengeBadge({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.type,
  });
}

enum BadgeType {
  starter,      // Complete first day
  consistent,   // 3 days in a row
  dedicated,    // 7 days in a row
  champion,     // Complete full challenge
  perfectWeek,  // 7 days straight
  comeback,     // Return after missing days
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

