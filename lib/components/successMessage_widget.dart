import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessMessageWidget extends StatelessWidget {
  const SuccessMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).colorScheme.onBackground,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Success Message',
                style: GoogleFonts.spaceGrotesk(
                  decoration: TextDecoration.none,
                  color: Theme.of(context).colorScheme.background,
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
