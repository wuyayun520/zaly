class UserPostItem {
  final String id;
  final String? text;
  final String? imagePath;
  final DateTime createdAt;

  UserPostItem({
    required this.id,
    this.text,
    this.imagePath,
    required this.createdAt,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'text': text,
    'imagePath': imagePath,
    'createdAt': createdAt.toIso8601String(),
  };

  factory UserPostItem.fromJson(Map<String, dynamic> json) => UserPostItem(
    id: json['id'] as String,
    text: json['text'] as String?,
    imagePath: json['imagePath'] as String?,
    createdAt: DateTime.parse(json['createdAt'] as String),
  );
}

