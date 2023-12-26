
// Daily Dish model
class DailyDish {
  String id;
  String name;
  String type;
  String description;
  String image;
  DateTime startTime;
  DateTime endTime;

  DailyDish({
    required this.id,
    required this.name,
    required this.type,
    required this.description,
    required this.image,
    required this.startTime,
    required this.endTime,
  });

  factory DailyDish.fromJson(Map<String, dynamic> json) {
    return DailyDish(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'description': description,
      'image': image,
      'startTime': startTime.toIso8601String(),
      'endTime': endTime.toIso8601String(),
    };
  }
}
