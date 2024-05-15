import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monstarev/provider/widgets_provider.dart';

import 'package:provider/provider.dart';

class ToggleButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
            onPressed: () {
              final buttonState =
                  Provider.of<WidgetsProvider>(context, listen: false);
              buttonState.toggleButtonState();
            },
            child: Consumer<WidgetsProvider>(
              builder: (context, buttonState, child) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      buttonState.isButtonClicked ? 'Pause' : 'Play',
                      style: GoogleFonts.spaceGrotesk(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      buttonState.isButtonClicked
                          ? Icons.pause
                          : Icons.play_arrow_outlined,
                      color: Colors.white,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
