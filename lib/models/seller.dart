
// Seller model
class Seller {
  String id;
  String name;
  String email;
  String password;
  String address;
  double rating;
  bool activation;
  bool availability;
  String image; // Assuming image path or URL

  Seller({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.address,
    required this.rating,
    required this.activation,
    required this.availability,
    required this.image,
  });

  // Create a method to convert JSON data to Seller object
  factory Seller.fromJson(Map<String, dynamic> json) {
    return Seller(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      address: json['address'] as String,
      rating: json['rating'] as double,
      activation: json['activation'] as bool,
      availability: json['availability'] as bool,
      image: json['image'] as String,
    );
  }

  // Convert Seller object to JSON data
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'address': address,
      'rating': rating,
      'activation': activation,
      'availability': availability,
      'image': image,
    };
  }
}
