class CartItem {

  final int id;
  final String name;
  final String image;
  final double price;

  int qty;

  CartItem({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.qty,
  });
}
