import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String name;
  final String description;
  final double pice;
  final String image;
  final String id;
  final List<Color> colors;
  final List<String> sizes;
  bool isFavourite;

  Product({
    @required this.name,
    @required this.description,
    @required this.pice,
    @required this.image,
    @required this.id,
    this.colors,
    this.sizes = const ['S', 'M', 'L'],
    this.isFavourite = false,
  });

  void toggleFavourite() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
