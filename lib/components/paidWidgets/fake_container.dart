import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glowy_borders/glowy_borders.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monstarev/provider/widgets_provider.dart';

import 'package:provider/provider.dart';

import '../../widgets/code_dialog_box.dart';

class Fake extends StatelessWidget {
  final String containerName;
  final String buttonName;
  final String codeSnippet;
  const Fake(
      {super.key,
      required this.buttonName,
      required this.codeSnippet,
      required this.containerName});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        // Handle hover enter event
        Provider.of<WidgetsProvider>(context, listen: false).setHovered(true);
      },
      onExit: (event) {
        // Handle hover exit event
        Provider.of<WidgetsProvider>(context, listen: false).setHovered(false);
      },
      child: Column(
        children: [
          Container(
            height: 530,
            width: 500,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              border: Border.all(
                color: Colors.red,
              ),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.secondary,
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  button(
                    buttonName: 'Continue with Facebook',
                    buttonColor: const Color.fromRGBO(53, 121, 234, 1.0),
                    textColor: Colors.white,
                    image: 'assets/images/Facebook Circled.svg',
                    borderColor: const Color.fromRGBO(53, 121, 234, 1.0),
                  ),
                  button(
                    buttonName: 'Continue with GitHub',
                    buttonColor: Colors.white,
                    textColor: Colors.black,
                    image: 'assets/images/GitHub(2).svg',
                    borderColor: Theme.of(context).colorScheme.secondary,
                  ),
                  button(
                    buttonName: 'Continue with Google',
                    buttonColor: Colors.white,
                    textColor: Colors.grey.shade600,
                    borderColor: Theme.of(context).colorScheme.secondary,
                    image: 'assets/images/Google.svg',
                  ),
                  button(
                    buttonName: 'Continue with Apple',
                    buttonColor: Colors.black,
                    textColor: Colors.white,
                    borderColor: Colors.grey.shade800,
                    image: 'assets/images/Apple Logo(2).svg',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Consumer<WidgetsProvider>(
                      builder: (context, provider, _) {
                        return Visibility(
                          visible: provider.isHovered,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Social Buttons',
                                style: GoogleFonts.arimo(
                                  decoration: TextDecoration.none,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Social ButtonsSocial ButtonsSocial ButtonsSocial Buttons',
                                style: GoogleFonts.arimo(
                                  decoration: TextDecoration.none,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade700,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    modalSheet(context, codeSnippet);
                                  },
                                  child: Center(
                                    child: Icon(
                                      Icons.code,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class button extends StatelessWidget {
  const button({
    super.key,
    required this.buttonName,
    required this.buttonColor,
    required this.textColor,
    required this.image,
    required this.borderColor,
  });
  final Color buttonColor;
  final String image;
  final Color textColor;
  final String buttonName;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          height: 58,
          width: 370,
          // padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor),
            color: buttonColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(image),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.005,
                ),
                Text(
                  buttonName,
                  style: GoogleFonts.poppins(
                    decoration: TextDecoration.none,
                    color: textColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
