import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/pages/home/homePage.dart';

class CustomButton extends StatelessWidget {
  final formKey;

  const CustomButton({@required this.formKey});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (formKey.currentState.validate())
          Navigator.of(context).pushReplacementNamed(HomePage.routeName);
      },
      child: Container(
        height: 60,
        width: double.maxFinite,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
        ),
        child: Text(
          'Go to the Shop',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
