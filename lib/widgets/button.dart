import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonMain extends StatefulWidget {
  final String buttonName;

  const ButtonMain({Key? key, required this.buttonName}) : super(key: key);

  @override
  _ButtonMainState createState() => _ButtonMainState();
}

class _ButtonMainState extends State<ButtonMain> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: Center(
        child: GestureDetector(
          child: Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blue,
                Color.fromRGBO(165, 42, 42, 1),
                Color.fromRGBO(112, 41, 99, 1),
              ]),
              // color: isHovered
              //     ? const Color.fromARGB(
              //         255, 153, 27, 17) // darker red when hovered
              //     : const Color.fromARGB(255, 183, 37, 27), // default red
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                widget.buttonName,
                style: GoogleFonts.spaceGrotesk(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
