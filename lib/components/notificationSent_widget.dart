import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationSentWidget extends StatelessWidget {
  const NotificationSentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.green,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Message Sent!',
                  style: GoogleFonts.spaceGrotesk(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.close,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
