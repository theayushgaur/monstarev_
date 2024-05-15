import 'package:flutter/material.dart';
import 'package:glowy_borders/glowy_borders.dart';
import 'package:google_fonts/google_fonts.dart';

class BouncingContainer extends StatefulWidget {
  @override
  _BouncingContainerState createState() => _BouncingContainerState();
}

class _BouncingContainerState extends State<BouncingContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    )..repeat(reverse: true); // Reverse animation to create the bouncing effect
    _animation = Tween<double>(begin: 0, end: 20).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.translate(
          offset:
              Offset(0, _animation.value), // Adjust the bouncing height here
          child: AnimatedGradientBorder(
            borderSize: 1,
            glowSize: 3,
            gradientColors: [
              Colors.yellow,
              Colors.red,
              Colors.pink,
              Colors.purple,

              // Colors.purple,
              // Colors.blue,
              // Colors.transparent,
            ],
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 250,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Real Demos!',
                  style: GoogleFonts.besley(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
