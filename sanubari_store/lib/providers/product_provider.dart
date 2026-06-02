import 'package:flutter/material.dart';

import '../services/product_service.dart';

class ProductProvider
    extends ChangeNotifier {

  List products = [];

  bool isLoading = false;

  Future<void> getProducts()
  async {

    isLoading = true;

    notifyListeners();

    products =
        await ProductService()
            .getProducts();

    isLoading = false;

    notifyListeners();
  }
}
