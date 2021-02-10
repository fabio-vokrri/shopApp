import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/pages/home/homePage.dart';
import 'package:shop_app/pages/pages.dart';

class SplashPage extends StatelessWidget {
  static const routeName = 'splashPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Shop App',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            SizedBox(height: 20),
            Image.asset('assets/images/shop.png'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.of(context).pushReplacementNamed(SignUpPage.routeName),
        backgroundColor: Colors.black,
        highlightElevation: 0,
        child: Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
