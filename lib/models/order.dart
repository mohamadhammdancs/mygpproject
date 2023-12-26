class Order {
  String id;
  String buyerId;
  String sellerId;
  String dishId; // This can represent either RegularDish or DailyDish ID depending on the type of order
  String type; // This can be used to distinguish between RegularDish or DailyDish in the order
  double totalPrice;
  int quantity;
  DateTime orderDateTime;
  bool isCompleted;

  Order({
    required this.id,
    required this.buyerId,
    required this.sellerId,
    required this.dishId,
    required this.type,
    required this.totalPrice,
    required this.quantity,
    required this.orderDateTime,
    required this.isCompleted,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'] as String,
      buyerId: json['buyerId'] as String,
      sellerId: json['sellerId'] as String,
      dishId: json['dishId'] as String,
      type: json['type'] as String,
      totalPrice: json['totalPrice'] as double,
      quantity: json['quantity'] as int,
      orderDateTime: DateTime.parse(json['orderDateTime'] as String),
      isCompleted: json['isCompleted'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'buyerId': buyerId,
      'sellerId': sellerId,
      'dishId': dishId,
      'type': type,
      'totalPrice': totalPrice,
      'quantity': quantity,
      'orderDateTime': orderDateTime.toIso8601String(),
      'isCompleted': isCompleted,
    };
  }
}
