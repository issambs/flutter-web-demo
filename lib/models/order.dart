class Order {
  final String id;
  final String cupName;
  final String price;
  final String status;

  Order({required this.id, required this.cupName, required this.price, required this.status});
}

List<Order> mockOrders = [
  Order(id: 'o1', cupName: "Sommarcupen 2025", price: "995 SEK", status: "Betald"),
];
