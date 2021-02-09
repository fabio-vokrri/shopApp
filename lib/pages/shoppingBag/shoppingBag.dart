import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop_app/providers/productProvider.dart';
import 'components/customAppBar.dart';
import 'components/customBody1.dart';
import 'components/customBody2.dart';

class ShoppingBagPage extends StatelessWidget {
  static const routeName = 'shoppingBagPage';

  @override
  Widget build(BuildContext context) {
    final shoppingBagProducts =
        Provider.of<ProductProvider>(context).getShoppingBag;

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(),
      body: shoppingBagProducts.length == 0
          ? CustomBody1()
          : CustomBody2(shoppingBagProducts: shoppingBagProducts),
    );
  }
}
