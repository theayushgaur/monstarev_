import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button2 extends StatelessWidget {
  final String buttonName;
  const Button2({super.key, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Center(
        child: GestureDetector(
          child: Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 2),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                buttonName,
                style: GoogleFonts.spaceGrotesk(
                  decoration: TextDecoration.none,
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
