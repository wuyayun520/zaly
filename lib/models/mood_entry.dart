class MoodEntry {
  final String id;
  final DateTime timestamp;
  final MoodType moodType;
  final int intensity; // 1-10
  final String? note;
  final List<String> tags;
  final String? trigger;

  MoodEntry({
    required this.id,
    required this.timestamp,
    required this.moodType,
    required this.intensity,
    this.note,
    this.tags = const [],
    this.trigger,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'timestamp': timestamp.toIso8601String(),
      'moodType': moodType.name,
      'intensity': intensity,
      'note': note,
      'tags': tags,
      'trigger': trigger,
    };
  }

  factory MoodEntry.fromJson(Map<String, dynamic> json) {
    return MoodEntry(
      id: json['id'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      moodType: MoodType.values.firstWhere(
        (e) => e.name == json['moodType'],
        orElse: () => MoodType.neutral,
      ),
      intensity: json['intensity'] as int,
      note: json['note'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
      trigger: json['trigger'] as String?,
    );
  }
}

enum MoodType {
  veryHappy,
  happy,
  neutral,
  sad,
  verySad,
  anxious,
  angry,
  excited,
  calm,
  stressed,
}

extension MoodTypeExtension on MoodType {
  String get displayName {
    switch (this) {
      case MoodType.veryHappy:
        return 'Very Happy';
      case MoodType.happy:
        return 'Happy';
      case MoodType.neutral:
        return 'Neutral';
      case MoodType.sad:
        return 'Sad';
      case MoodType.verySad:
        return 'Very Sad';
      case MoodType.anxious:
        return 'Anxious';
      case MoodType.angry:
        return 'Angry';
      case MoodType.excited:
        return 'Excited';
      case MoodType.calm:
        return 'Calm';
      case MoodType.stressed:
        return 'Stressed';
    }
  }

  String get emoji {
    switch (this) {
      case MoodType.veryHappy:
        return '😄';
      case MoodType.happy:
        return '🙂';
      case MoodType.neutral:
        return '😐';
      case MoodType.sad:
        return '😢';
      case MoodType.verySad:
        return '😭';
      case MoodType.anxious:
        return '😰';
      case MoodType.angry:
        return '😠';
      case MoodType.excited:
        return '🤩';
      case MoodType.calm:
        return '😌';
      case MoodType.stressed:
        return '😫';
    }
  }

  String get color {
    switch (this) {
      case MoodType.veryHappy:
        return '#FFD700';
      case MoodType.happy:
        return '#90EE90';
      case MoodType.neutral:
        return '#D3D3D3';
      case MoodType.sad:
        return '#87CEEB';
      case MoodType.verySad:
        return '#4682B4';
      case MoodType.anxious:
        return '#FFA07A';
      case MoodType.angry:
        return '#FF6347';
      case MoodType.excited:
        return '#FF69B4';
      case MoodType.calm:
        return '#98D8C8';
      case MoodType.stressed:
        return '#9370DB';
    }
  }
}

