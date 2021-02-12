import 'package:flutter/cupertino.dart';
import 'package:shop_app/models/productModel.dart';

class ShoppingBagModel extends ChangeNotifier {
  List<Product> productsInShoppingBag = [];

  void addProduct(Product product) {
    productsInShoppingBag.add(product);
    notifyListeners();
  }

  void removeProduct(Product product) {
    productsInShoppingBag.remove(product);
    notifyListeners();
  }

  double get totalPrice {
    double totalPrice = 0.0;

    for (final product in productsInShoppingBag) {
      totalPrice += product.price;
    }

    return totalPrice;
  }

  List<Product> get getProductsInShoppingBag => productsInShoppingBag;
}
