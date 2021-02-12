import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/productModel.dart';

import 'package:shop_app/routes/routeGenerator.dart';
import 'package:shop_app/pages/pages.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  runApp(ShopApp());
}

class ShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => ProductProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ShopApp',
        initialRoute: HomePage.routeName,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
