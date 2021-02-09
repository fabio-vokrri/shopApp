import 'package:flutter/material.dart';
import 'package:shop_app/models/productModel.dart';

class ProductProvider with ChangeNotifier {
  List<Product> products = [
    Product(
      name: 'Maglione',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 39.99,
      image: 'assets/images/img1.jpg',
      id: 'p1',
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
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 39.99,
      image: 'assets/images/img2.jpg',
      id: 'p2',
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
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 39.99,
      image: 'assets/images/img3.jpg',
      id: 'p3',
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
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 39.99,
      image: 'assets/images/img4.jpg',
      id: 'p4',
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
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 39.99,
      image: 'assets/images/img5.jpg',
      id: 'p5',
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
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 39.99,
      image: 'assets/images/img6.jpg',
      id: 'p6',
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
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 39.99,
      image: 'assets/images/img7.jpg',
      id: 'p7',
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
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 39.99,
      image: 'assets/images/img8.jpg',
      id: 'p8',
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
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 39.99,
      image: 'assets/images/img9.jpg',
      id: 'p9',
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
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 39.99,
      image: 'assets/images/img10.jpg',
      id: 'p10',
      colors: [
        Color(0xFFC3C3C3),
        Color(0xFFF3E8DC),
        Color(0xFFBD896A),
        Color(0xFFB85231),
      ],
    ),
  ];

  List<Product> get getProducts {
    return [...products];
  }

  List<Product> get getFavourites {
    return [
      ...products.where((element) => element.isFavourite == true),
    ];
  }

  List<Product> get getShoppingBag {
    return [
      ...products.where((element) => element.itemCount >= 1),
    ];
  }

  double get getTotal {
    double totalAmount = 0;
    for (final product in getShoppingBag) {
      totalAmount = product.price * product.itemCount;
    }
    return totalAmount;
  }
}
