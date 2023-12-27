// Regular Dish model
class RegularDish {
  String id;
  double price;
  String cuisine;
  String type;
  int numberOfOrders;
  String description;
  String image;
  bool availability;

  RegularDish({
    required this.id,
    required this.price,
    required this.cuisine,
    required this.type,
    required this.numberOfOrders,
    required this.description,
    required this.image,
    required this.availability,
  });

  factory RegularDish.fromJson(Map<String, dynamic> json) {
    return RegularDish(
      id: json['id'] as String,
      price: json['price'] as double,
      cuisine: json['cuisine'] as String,
      type: json['type'] as String,
      numberOfOrders: json['numberOfOrders'] as int,
      description: json['description'] as String,
      image: json['image'] as String,
      availability: json['availability'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'price': price,
      'cuisine': cuisine,
      'type': type,
      'numberOfOrders': numberOfOrders,
      'description': description,
      'image': image,
      'availability': availability,
    };
  }
}
