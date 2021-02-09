import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:shop_app/pages/shoppingBag/components/customListTile.dart';
import 'package:shop_app/providers/productProvider.dart';

class CustomBody2 extends StatelessWidget {
  final shoppingBagProducts;
  const CustomBody2({@required this.shoppingBagProducts});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: shoppingBagProducts.length,
          itemBuilder: (context, index) {
            final product = shoppingBagProducts[index];
            return CustomListTile(product: product);
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Consumer<ProductProvider>(
                  builder: (context, value, child) {
                    return Text(
                      'Total amount: ${value.getTotal}',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    );
                  },
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
