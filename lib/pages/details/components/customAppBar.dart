import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/productProvider.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final product;
  const CustomAppBar({@required this.product});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      actions: [
        Consumer<ProductProvider>(
          builder: (context, value, child) {
            return IconButton(
              icon: Icon(
                product.isFavourite ? Icons.favorite : Icons.favorite_border,
                color: Colors.black,
              ),
              onPressed: () {
                product.toggleFavourite();
              },
            );
          },
        ),
      ],
    );
  }
}
