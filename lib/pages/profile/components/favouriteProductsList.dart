import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

          return Dismissible(
            key: Key('${product.id}'),
            onDismissed: (direction) => product.toggleFavourite(),
            direction: DismissDirection.endToStart,
            confirmDismiss: (direction) {
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Are you sure?'),
                    content: Text(
                      'Do you really want to remove this product from your favorites?',
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context, true),
                        child: Text('Yes'),
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context, false),
                        child: Text('No'),
                      ),
                    ],
                  );
                },
              );
            },
            background: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.all(10),
              child: Icon(Icons.delete),
            ),
            child: Container(
              height: 75,
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(product.image),
                  ),
                  SizedBox(width: 20),
                  Text(
                    product.name,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
