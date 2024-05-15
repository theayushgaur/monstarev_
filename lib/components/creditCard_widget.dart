import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0), // Top left corner radius
                topRight: Radius.circular(10.0),
              ),
              gradient: LinearGradient(
                colors: [
                  Colors.purple,
                  Colors.blue,
                  Colors.grey,
                  Colors.red,
                ],
              ),
              boxShadow: [
                // Add boxShadow
                BoxShadow(
                  color: Colors.red.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: Offset(0, 3), // Adjust offset for shadow direction
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.rss_feed,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '1234 5678 3452 4090',
                    style: GoogleFonts.openSans(
                      wordSpacing: 13,
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 70,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0), // Top left corner radius
                bottomRight: Radius.circular(10.0),
              ),
              color: Colors.white,
              border: Border(
                left: BorderSide(color: Colors.grey),
                right: BorderSide(color: Colors.grey),
                bottom: BorderSide(color: Colors.grey),
              ),
              boxShadow: [
                // Add boxShadow
                BoxShadow(
                  color: const Color.fromRGBO(156, 39, 176, 1).withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 3), // Adjust offset for shadow direction
                ),
              ],
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Ayush Gaur',
                        style: GoogleFonts.spaceGrotesk(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Exp:  ',
                          style: GoogleFonts.spaceGrotesk(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                              text: '09 / 24 ',
                              style: GoogleFonts.spaceGrotesk(
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Image.asset(
                  //   'assets/card_icon.png',
                  //   height: 60,
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
