import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/pages/home/homePage.dart';

class SplashPage extends StatelessWidget {
  static const routeName = 'splashPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              'Shop App',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            SizedBox(height: 20),
            Image.asset('assets/images/shop.png'),
            Spacer(),
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .pushReplacementNamed(HomePage.routeName),
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: double.maxFinite,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child: Text(
                  'Let\'s get started!',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
