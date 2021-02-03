import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop_app/models/productModel.dart';
import 'package:shop_app/providers/productProvider.dart';

class LikeButton extends StatefulWidget {
  final Product product;
  const LikeButton({@required this.product});

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.product.toggleFavourite();
        setState(() {});
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white70,
        ),
        child: Consumer<ProductProvider>(
          builder: (_, value, __) {
            return Icon(
              widget.product.isFavourite
                  ? Icons.favorite
                  : Icons.favorite_outline,
              size: 15,
            );
          },
        ),
      ),
    );
  }
}
