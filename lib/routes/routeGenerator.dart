import 'package:flutter/material.dart';
import 'package:shop_app/models/productModel.dart';
import 'package:shop_app/pages/pages.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case HomePage.routeName:
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );

      case CategoriesPage.routeName:
        return MaterialPageRoute(
          builder: (context) => CategoriesPage(),
        );

      case DetailsPage.routeName:
        if (arguments is Product)
          return MaterialPageRoute(
            builder: (context) => DetailsPage(product: arguments),
          );
        return _buildErrorPage();

      case ProfilePage.routeName:
        return MaterialPageRoute(
          builder: (context) => ProfilePage(),
        );

      case ShoppingBagPage.routeName:
        return MaterialPageRoute(
          builder: (context) => ShoppingBagPage(),
        );

      default:
        return _buildErrorPage();
    }
  }

  static Route<dynamic> _buildErrorPage() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white70,
            elevation: 0,
          ),
          body: Center(
            child: Text('Error'),
          ),
        );
      },
    );
  }
}
