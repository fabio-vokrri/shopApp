import 'package:flutter/material.dart';

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
      brightness: Brightness.light,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      actions: [
        IconButton(
          icon: Icon(
            widget.product.isFavourite ? Icons.favorite : Icons.favorite_border,
            color: Colors.black,
          ),
          onPressed: () {
            setState(() {
              widget.product.toggleFavourite();
            });
          },
        ),
      ],
    );
  }
}
