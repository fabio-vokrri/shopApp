import 'package:flutter/material.dart';

import 'package:shop_app/models/productModel.dart';

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
        child: Icon(
          widget.product.isFavourite ? Icons.favorite : Icons.favorite_outline,
          size: 15,
        ),
      ),
    );
  }
}
