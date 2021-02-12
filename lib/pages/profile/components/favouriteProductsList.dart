import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:shop_app/models/productModel.dart';

class FavouriteProductsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favouriteProducts =
        Provider.of<ProductProvider>(context).getFavouriteProducts;

    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: favouriteProducts.length,
        itemBuilder: (context, index) {
          final product = favouriteProducts[index];

          return Container(
            height: 100,
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Text(product.name),
              ],
            ),
          );
        },
      ),
    );
  }
}
