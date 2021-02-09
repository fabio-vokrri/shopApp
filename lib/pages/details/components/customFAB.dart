import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shop_app/models/productModel.dart';

class CustomFAB extends StatelessWidget {
  final Product product;
  final count = 1;

  const CustomFAB({@required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => product.addItem(count),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        height: 60,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              'Add to cart',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
