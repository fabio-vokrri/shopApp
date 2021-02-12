import 'package:flutter/foundation.dart';
import 'package:shop_app/models/productModel.dart';

class FavouriteModel extends ChangeNotifier {
  List<Product> favouriteProducts = [];

  void addFavourite(Product product) {
    favouriteProducts.add(product);
    notifyListeners();
  }

  void removeFavourite(Product product) {
    favouriteProducts.remove(product);
    notifyListeners();
  }

  bool isFavourite(Product product) => favouriteProducts.contains(product);

  List<Product> get getFavouriteProducts => favouriteProducts;
}
