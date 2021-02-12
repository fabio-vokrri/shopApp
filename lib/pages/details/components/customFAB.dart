import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shop_app/models/productModel.dart';

class CustomFAB extends StatefulWidget {
  final Product product;

  const CustomFAB({@required this.product});

  @override
  _CustomFABState createState() => _CustomFABState();
}

class _CustomFABState extends State<CustomFAB> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.product.addToShoppingBag();
        setState(() {});
      },
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
              widget.product.itemCount > 0
                  ? Icons.done
                  : Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              'Add to cart',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
