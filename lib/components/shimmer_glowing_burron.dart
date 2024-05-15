import 'package:flutter/material.dart';
import 'package:glowy_borders/glowy_borders.dart';
import 'package:google_fonts/google_fonts.dart';

class GlowingButton extends StatelessWidget {
  const GlowingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedGradientBorder(
      animationTime: 10,
      borderSize: 1,
      glowSize: 4,
      gradientColors: [
        Colors.transparent,
        Colors.transparent,
        Colors.transparent,
        Colors.red,
      ],
      borderRadius: BorderRadius.circular(10),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(
              color: Colors.grey.shade800,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          height: 60,
          width: 300,
          child: Center(
            child: Text(
              'Glowing Button',
              style: GoogleFonts.spaceGrotesk(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
