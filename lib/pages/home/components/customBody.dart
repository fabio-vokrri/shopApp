import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:shop_app/models/productModel.dart';

import 'customSearchBar.dart';
import 'productCards.dart';

class CustomBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Product> products =
        Provider.of<ProductProvider>(context).getProducts;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 75),
        // text
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'The most popular\nclothes today',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        SizedBox(height: 20),
        CustomSearchBar(),
        SizedBox(height: 40),
        // product cards
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1 / 2,
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 20),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ProductCard(product: product);
            },
          ),
        )
      ],
    );
  }
}
