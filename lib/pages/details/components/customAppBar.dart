import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/productProvider.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  final product;
  const CustomAppBar({@required this.product});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
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
                widget.product.isFavourite
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: Colors.black,
              ),
              onPressed: () {
                widget.product.toggleFavourite();
                setState(() {});
              },
            );
          },
        ),
      ],
    );
  }
}
