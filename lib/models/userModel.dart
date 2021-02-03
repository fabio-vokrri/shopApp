import 'package:flutter/material.dart';

class User with ChangeNotifier {
  final String name;
  final String surname;
  final String email;
  final String image;
  final DateTime birthday;

  User({
    @required this.name,
    @required this.surname,
    @required this.email,
    @required this.birthday,
    @required this.image,
  });
}
