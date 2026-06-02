import 'package:flutter/material.dart';
import '../models/cart_item.dart';

class CartProvider extends ChangeNotifier {

  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  void addToCart(CartItem item) {

    final index = _items.indexWhere(
      (e) => e.id == item.id,
    );

    if (index >= 0) {

      _items[index].qty++;

    } else {

      _items.add(item);
    }

    notifyListeners();
  }

  void removeItem(int id) {

    _items.removeWhere(
      (e) => e.id == id,
    );

    notifyListeners();
  }

  double get total {

    double totalPrice = 0;

    for (var item in _items) {

      totalPrice +=
          item.price * item.qty;
    }

    return totalPrice;
  }
}
