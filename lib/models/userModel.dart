import 'package:flutter/material.dart';

class User with ChangeNotifier {
  final String name;
  final String surname;
  final String email;
  final DateTime birthday;
  final String image;

  User({
    @required this.name,
    @required this.surname,
    @required this.email,
    @required this.birthday,
    @required this.image,
  });
}
