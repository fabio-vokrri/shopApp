import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String name;
  final String description;
  final double price;
  final String image;
  final String id;
  final List<Color> colors;
  final List<String> sizes;
  bool isFavourite;
  int itemCount;

  Product({
    @required this.name,
    @required this.description,
    @required this.price,
    @required this.image,
    @required this.id,
    this.colors,
    this.sizes = const ['S', 'M', 'L'],
    this.isFavourite = false,
    this.itemCount = 0,
  }) : assert(name != null || price != null);

  void toggleFavourite() {
    isFavourite = !isFavourite;
    notifyListeners();
  }

  void addItemToCart(int count) {
    if (count == 0)
      itemCount++;
    else
      itemCount = count;
    notifyListeners();
  }

  void removeItem() {
    itemCount = 0;
    notifyListeners();
  }
}
