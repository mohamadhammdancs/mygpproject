// Buyer model
class Buyer {
  String id;
  String name;
  String phoneNumber;
  String address;
  String email;
  String password;

  Buyer({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.email,
    required this.password,
  });

  // Create a method to convert JSON data to Buyer object
  factory Buyer.fromJson(Map<String, dynamic> json) {
    return Buyer(
      id: json['id'] as String,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      address: json['address'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );
  }

  // Convert Buyer object to JSON data
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phoneNumber': phoneNumber,
      'address': address,
      'email': email,
      'password': password,
    };
  }
}
