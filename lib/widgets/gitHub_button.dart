import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/link.dart';

class GitHubButton extends StatelessWidget {
  final String buttonName;

  const GitHubButton({Key? key, required this.buttonName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Link(
        target: LinkTarget.blank,
        uri: Uri.parse('https://github.com/theayushgaur/monstarev_'),
        builder: (BuildContext context, followLink) => MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: followLink,
            child: Container(
              height: 45,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                  color: Color.fromRGBO(216, 49, 32, 1),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('assets/images/GitHub(3).svg'),
                    Text(
                      buttonName,
                      style: GoogleFonts.spaceGrotesk(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
