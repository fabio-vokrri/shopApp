import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/customAppBar.dart';
import 'components/favouriteProductsList.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = 'ProfilePage';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomAppBar(),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            height: size.height * 0.55,
            child: Image.asset(
              'assets/images/portrait.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height * 0.5,
              width: size.width,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Text(
                    'Fabio Vokrri',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Your favorite products',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 10),
                  FavouriteProductsList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}