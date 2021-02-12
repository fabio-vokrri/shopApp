import 'package:flutter/material.dart';

class Product extends ChangeNotifier {
  final String name;
  final String description;
  final double price;
  final String image;
  final int id;
  final List<Color> colors;
  final List<String> sizes;
  bool isFavourite;
  int itemCount;

  Product({
    @required this.name,
    @required this.description,
    @required this.price,
    @required this.image,
    this.id,
    this.colors,
    this.itemCount = 0,
    this.isFavourite = false,
    this.sizes = const ['S', 'M', 'L'],
  }) : assert(name != null || price != null);

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Product && other.id == id;

  void toggleFavourite() {
    isFavourite = !isFavourite;
    notifyListeners();
  }

  void addToShoppingBag() {
    itemCount++;
    notifyListeners();
  }

  void removeProduct() {
    itemCount = 0;
    notifyListeners();
  }
}

class ProductProvider {
  static List<Product> products = [
    Product(
      name: 'Maglione',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor inclabore et dolore magna aliqua.',
      price: 39.99,
      image: 'assets/images/img1.jpg',
      colors: [
        Color(0xFFC3C3C3),
        Color(0xFFF3E8DC),
        Color(0xFFBD896A),
        Color(0xFFB85231),
      ],
    ),
    Product(
      name: 'Gonna',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor inclabore et dolore magna aliqua.',
      price: 15.99,
      image: 'assets/images/img2.jpg',
      colors: [
        Color(0xFFC3C3C3),
        Color(0xFFF3E8DC),
        Color(0xFFBD896A),
        Color(0xFFB85231),
      ],
    ),
    Product(
      name: 'Gonna',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor inclabore et dolore magna aliqua.',
      price: 28.99,
      image: 'assets/images/img3.jpg',
      colors: [
        Color(0xFFC3C3C3),
        Color(0xFFF3E8DC),
        Color(0xFFBD896A),
        Color(0xFFB85231),
      ],
    ),
    Product(
      name: 'Maglione',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor inclabore et dolore magna aliqua.',
      price: 53.99,
      image: 'assets/images/img4.jpg',
      colors: [
        Color(0xFFC3C3C3),
        Color(0xFFF3E8DC),
        Color(0xFFBD896A),
        Color(0xFFB85231),
      ],
    ),
    Product(
      name: 'Maglia',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor inclabore et dolore magna aliqua.',
      price: 29.99,
      image: 'assets/images/img5.jpg',
      colors: [
        Color(0xFFC3C3C3),
        Color(0xFFF3E8DC),
        Color(0xFFBD896A),
        Color(0xFFB85231),
      ],
    ),
    Product(
      name: 'Body',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor inclabore et dolore magna aliqua.',
      price: 50.99,
      image: 'assets/images/img6.jpg',
      colors: [
        Color(0xFFC3C3C3),
        Color(0xFFF3E8DC),
        Color(0xFFBD896A),
        Color(0xFFB85231),
      ],
    ),
    Product(
      name: 'Maglia',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor inclabore et dolore magna aliqua.',
      price: 89.99,
      image: 'assets/images/img7.jpg',
      colors: [
        Color(0xFFC3C3C3),
        Color(0xFFF3E8DC),
        Color(0xFFBD896A),
        Color(0xFFB85231),
      ],
    ),
    Product(
      name: 'Maglia',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor inclabore et dolore magna aliqua.',
      price: 19.99,
      image: 'assets/images/img8.jpg',
      colors: [
        Color(0xFFC3C3C3),
        Color(0xFFF3E8DC),
        Color(0xFFBD896A),
        Color(0xFFB85231),
      ],
    ),
    Product(
      name: 'Maglione',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor inclabore et dolore magna aliqua.',
      price: 39.99,
      image: 'assets/images/img9.jpg',
      colors: [
        Color(0xFFC3C3C3),
        Color(0xFFF3E8DC),
        Color(0xFFBD896A),
        Color(0xFFB85231),
      ],
    ),
    Product(
      name: 'Maglione',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor inclabore et dolore magna aliqua.',
      price: 22.99,
      image: 'assets/images/img10.jpg',
      colors: [
        Color(0xFFC3C3C3),
        Color(0xFFF3E8DC),
        Color(0xFFBD896A),
        Color(0xFFB85231),
      ],
    ),
  ];

  List<Product> get getProducts => products;

  List<Product> get getFavouriteProducts {
    return [...products.where((product) => product.isFavourite)];
  }

  List<Product> get getShoppingbag {
    return [...products.where((product) => product.itemCount > 0)];
  }

  double getTotal() {
    double totalPrice = 0.0;
    for (final item in getShoppingbag) {
      totalPrice += item.price;
    }

    return totalPrice;
  }
}
