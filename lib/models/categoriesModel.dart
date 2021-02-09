import 'package:flutter/material.dart';

class Category {
  final String title;
  final String image;

  Category({
    @required this.title,
    @required this.image,
  });
}

List<Category> categories = [
  Category(title: 'Man', image: null)
];
