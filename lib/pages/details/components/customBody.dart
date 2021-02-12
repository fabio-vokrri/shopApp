import 'package:flutter/material.dart';

import 'package:shop_app/models/productModel.dart';

import 'productDetails.dart';

class CustomBody extends StatelessWidget {
  final Product product;
  const CustomBody({@required this.product});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.55,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(product.image),
            ),
          ),
        ),
        ProductDetails(product: product),
      ],
    );
  }
}
