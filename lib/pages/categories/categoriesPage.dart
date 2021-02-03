import 'package:flutter/material.dart';

import 'components/CustomAppBar.dart';

class CategoriesPage extends StatelessWidget {
  static const routeName = 'CategoriesPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 150,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
          );
        },
      ),
    );
  }
}
