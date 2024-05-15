import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextField3 extends StatelessWidget {
  final String hintText;
  const TextField3({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: Colors.red,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
          decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.subdirectory_arrow_left,
              color: Colors.white,
            ),
            hintText: hintText,
            hintStyle: GoogleFonts.spaceGrotesk(
              decoration: TextDecoration.none,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 17,
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 10),
          ),
        ),
      ),
    );
  }
}
