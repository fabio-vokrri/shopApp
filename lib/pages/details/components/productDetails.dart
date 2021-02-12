import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shop_app/models/productModel.dart';

class ProductDetails extends StatelessWidget {
  final Product product;

  ProductDetails({@required this.product});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: size.height * 0.5,
        width: size.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.name,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  '\$${product.price}',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Text(
              product.description,
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Color',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                ...product.colors.map(
                  (color) => Container(
                    height: 36,
                    width: 36,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Size',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                ...product.sizes.map(
                  (size) => Container(
                    height: 36,
                    width: 36,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200],
                    ),
                    child: Text(
                      size,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
