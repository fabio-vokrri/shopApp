import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(left: 20),
        padding: EdgeInsets.only(left: 20),
        height: 70,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: Colors.grey[400],
            ),
            SizedBox(width: 20),
            Text(
              'Search...',
              style: GoogleFonts.poppins(
                color: Colors.grey[400],
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
