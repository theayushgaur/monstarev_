import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/code_editor_container.dart';

class Button1 extends StatelessWidget {
  final String buttonName;

  const Button1({
    super.key,
    required this.buttonName,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Row(
        children: [
          Container(
            height: 45,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Center(
              child: Text(
                buttonName,
                style: GoogleFonts.spaceGrotesk(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          CodeEditor(
              codeSnippet: '''''class TextField2 extends StatelessWidget {
        final String hintText;
        const TextField2({super.key, required this.hintText});
      
        @override
        Widget build(BuildContext context) {
          return Container(
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            fontSize: 15,
            color: Colors.red,
          ),
          decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.subdirectory_arrow_left,
              color: Colors.red,
            ),
            hintText: hintText,
            hintStyle: GoogleFonts.spaceGrotesk(
              decoration: TextDecoration.none,
              color: Colors.red,
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
      ''')
        ],
      ),
    );
  }
}
