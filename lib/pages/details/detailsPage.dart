import 'package:flutter/material.dart';
import 'package:shop_app/models/productModel.dart';

import 'components/customAppBar.dart';
import 'components/customBody.dart';
import 'components/customFAB.dart';

class DetailsPage extends StatelessWidget {
  static const routeName = 'DetailsPage';

  final Product product;
  const DetailsPage({@required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(product: product),
      extendBodyBehindAppBar: true,
      body: CustomBody(product: product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFAB(),
    );
  }
}
