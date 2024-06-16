import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ButtonMain extends StatelessWidget {
  final String buttonName;

  const ButtonMain({Key? key, required this.buttonName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Center(
        child: GestureDetector(
          child: Container(
            height: 45,
            width: 130,
            decoration: BoxDecoration(
              color: Color.fromRGBO(216, 49, 32, 1),
              // gradient: LinearGradient(colors: [
              //   Colors.blue,
              //   Color.fromRGBO(165, 42, 42, 1),
              //   Color.fromRGBO(112, 41, 99, 1),
              // ]),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                buttonName,
                style: GoogleFonts.spaceGrotesk(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
