import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:shop_app/providers/productProvider.dart';
import 'components/customListTile.dart';

import 'components/customAppBar.dart';

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
      body: Stack(
        children: [
          ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: shoppingBagProducts.length,
            itemBuilder: (context, index) {
              final product = shoppingBagProducts[index];
              return CustomListTile(product: product);
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(20),
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Consumer<ProductProvider>(
                    builder: (context, value, child) {
                      return Text(
                        '${value.getTotal}',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
