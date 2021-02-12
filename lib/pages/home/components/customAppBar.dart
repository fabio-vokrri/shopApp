import 'package:flutter/material.dart';
import 'package:shop_app/pages/pages.dart';
import 'package:shop_app/routes/routeAnimation.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      brightness: Brightness.light,
      leading: GestureDetector(
        onTap: () => Navigator.push(
          context,
          RevealRoute(
            page: ProfilePage(),
            maxRadius: 1500,
            alignment: Alignment.topLeft,
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
            image: DecorationImage(
              image: AssetImage('assets/images/portrait.jpg'),
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.settings,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(
              CategoriesPage.routeName,
            );
          },
        ),
        IconButton(
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(
              ShoppingBagPage.routeName,
            );
          },
        ),
      ],
    );
  }
}
