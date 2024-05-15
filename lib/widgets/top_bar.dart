import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monstarev/provider/widgets_provider.dart';
import 'package:monstarev/widgets/search_popUp_container.dart';

import 'package:provider/provider.dart';

import '../provider/theme_changer.dart';
import '../themes/theme.dart';

class TopBar extends StatelessWidget {
  final ThemeChanger themeChanger;
  const TopBar({Key? key, required this.themeChanger});

  @override
  Widget build(BuildContext context) {
    final hoverProvider = Provider.of<WidgetsProvider>(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 1000) {
          return ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  // border: BorderDirectional(
                  //   bottom: BorderSide(
                  //     color: Colors.red,
                  //     width: 0.5,
                  //   ),
                  // ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AnimatedTextKit(
                        repeatForever: false,
                        totalRepeatCount: 1,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            textStyle: GoogleFonts.spaceGrotesk(
                              color: Colors.grey.shade300,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            'MonstaRev_',
                          ),
                        ],
                      ),
                      // Your existing top bar widgets here
                      GestureDetector(
                        onTap: () {
                          searchBoxPopUp(context);
                        },
                        child: Container(
                          height: 35,
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                            color: hoverProvider.isHovered
                                ? Colors.grey.shade800
                                : Colors.black,
                            border: Border.all(
                              color: Colors.grey.shade800,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'Search components...',
                              style: GoogleFonts.spaceGrotesk(
                                decoration: TextDecoration.none,
                                color: hoverProvider.isHovered
                                    ? Colors.white
                                    : Colors.grey.shade400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        } else {
          return SizedBox(
            height: 120,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/logo_main.webp'),
                      Text(
                        'MonstaRev_ ',
                        style: GoogleFonts.spaceGrotesk(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 23,
                        width: 40,
                        decoration: BoxDecoration(
                            // gradient: LinearGradient(colors: [
                            //   Color.fromARGB(255, 33, 150, 243),
                            // ]),
                            color: Color.fromRGBO(216, 49, 32, 1),
                            // color: Color.fromARGB(255, 33, 150, 243),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text(
                            'Beta',
                            style: GoogleFonts.spaceGrotesk(
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          searchBoxPopUp(context);
                        },
                        child: Container(
                          height: 35,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            border: Border.all(
                              color: Colors.grey.shade800,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'Search components...',
                              style: GoogleFonts.spaceGrotesk(
                                decoration: TextDecoration.none,
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (themeChanger.thememode == darkTheme) {
                            themeChanger.setTheme(lightTheme);
                          } else {
                            themeChanger.setTheme(darkTheme);
                          }
                        },
                        child: Icon(
                          Icons.light_mode,
                          color: themeChanger.thememode == darkTheme
                              ? Colors.grey.shade400
                              : Colors.grey.shade900,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 35,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            border: Border.all(
                              color: Colors.grey.shade800,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            'Try it for free',
                            style: GoogleFonts.spaceGrotesk(
                              decoration: TextDecoration.none,
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}





// import 'dart:ui';

// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:project_comp_library/widgets/search_container.dart';

// class TopBar extends StatefulWidget {
//   const TopBar({Key? key});

//   @override
//   State<TopBar> createState() => _TopBarState();
// }

// class _TopBarState extends State<TopBar> {
//   bool isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         if (constraints.maxWidth <= 1000) {
//           return ClipRect(
//             child: BackdropFilter(
//               filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
//               child: Container(
//                 height: 70,
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   color: Colors.transparent,
//                   border: BorderDirectional(
//                     bottom: BorderSide(
//                       color: Colors.red,
//                       width: 0.5,
//                     ),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 10.0, vertical: 10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       AnimatedTextKit(
//                         repeatForever: false,
//                         totalRepeatCount: 1,
//                         animatedTexts: [
//                           TypewriterAnimatedText(
//                             textStyle: GoogleFonts.spaceGrotesk(
//                               color: Colors.grey.shade300,
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             'MonstaRev_',
//                           ),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           MouseRegion(
//                             onEnter: (_) {
//                               setState(() {
//                                 isHovered = true;
//                               });
//                             },
//                             onExit: (_) {
//                               setState(() {
//                                 isHovered = false;
//                               });
//                             },
//                             child: GestureDetector(
//                               onTap: () {
//                                 searchBoxPopUp(context);
//                               },
//                               child: Container(
//                                 height: 35,
//                                 width: MediaQuery.of(context).size.width * 0.6,
//                                 decoration: BoxDecoration(
//                                   color: isHovered
//                                       ? Colors.grey.shade800
//                                       : Colors.black,
//                                   border: Border.all(
//                                     color: Colors.grey.shade800,
//                                     style: BorderStyle.solid,
//                                   ),
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                                 child: Center(
//                                   child: Text(
//                                     'Search components...',
//                                     style: GoogleFonts.spaceGrotesk(
//                                       decoration: TextDecoration.none,
//                                       color: isHovered
//                                           ? Colors.white
//                                           : Colors.grey.shade400,
//                                       fontSize: 14,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           );
//         } else {
//           return ClipRect(
//             child: BackdropFilter(
//               filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
//               child: Container(
//                 height: 70,
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   color: Colors.transparent,
//                   border: BorderDirectional(
//                     bottom: BorderSide(
//                       color: Colors.red,
//                       width: 0.5,
//                     ),
//                   ),
//                 ),
//                 child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       // Your existing top bar widgets here
//                       Row(
//                         children: [
//                           Image.asset('assets/images/logo_main.webp'),
//                           AnimatedTextKit(
//                             repeatForever: false,
//                             totalRepeatCount: 1,
//                             animatedTexts: [
//                               TypewriterAnimatedText(
//                                 textStyle: GoogleFonts.spaceGrotesk(
//                                   color: Colors.grey.shade300,
//                                   fontSize: 30,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                                 'MonstaRev_',
//                               ),
//                             ],
//                           ),
//                           Container(
//                             height: 23,
//                             width: 40,
//                             decoration: BoxDecoration(
//                                 color: Color.fromRGBO(216, 49, 32, 1),
//                                 borderRadius: BorderRadius.circular(5)),
//                             child: Center(
//                               child: Text(
//                                 'Beta',
//                                 style: GoogleFonts.spaceGrotesk(
//                                   decoration: TextDecoration.none,
//                                   color: Colors.white,
//                                   fontSize: 12,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 30,
//                           ),
//                           Text(
//                             'Components',
//                             style: GoogleFonts.spaceGrotesk(
//                               decoration: TextDecoration.none,
//                               color: Colors.grey.shade400,
//                               fontSize: 15,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Text(
//                             'Pricing',
//                             style: GoogleFonts.spaceGrotesk(
//                               decoration: TextDecoration.none,
//                               color: Colors.grey.shade400,
//                               fontSize: 15,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Text(
//                             'Discord',
//                             style: GoogleFonts.spaceGrotesk(
//                               decoration: TextDecoration.none,
//                               color: Colors.grey.shade400,
//                               fontSize: 15,
//                             ),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           MouseRegion(
//                             onEnter: (_) {
//                               setState(() {
//                                 isHovered = true;
//                               });
//                             },
//                             onExit: (_) {
//                               setState(() {
//                                 isHovered = false;
//                               });
//                             },
//                             child: GestureDetector(
//                               onTap: () {
//                                 searchBoxPopUp(context);
//                               },
//                               child: Container(
//                                 height: 35,
//                                 width: 250,
//                                 decoration: BoxDecoration(
//                                   color: isHovered
//                                       ? Colors.grey.shade800
//                                       : Colors.black,
//                                   border: Border.all(
//                                     color: Colors.grey.shade800,
//                                     style: BorderStyle.solid,
//                                   ),
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                                 child: Center(
//                                   child: Text(
//                                     'Search components...',
//                                     style: GoogleFonts.spaceGrotesk(
//                                       decoration: TextDecoration.none,
//                                       color: isHovered
//                                           ? Colors.white
//                                           : Colors.grey.shade400,
//                                       fontSize: 14,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Icon(
//                             Icons.light_mode,
//                             color: Colors.grey.shade400,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Container(
//                             height: 40,
//                             width: 70,
//                             decoration: BoxDecoration(
//                                 color: Colors.black,
//                                 border: Border.all(
//                                   color: Colors.grey.shade800,
//                                   style: BorderStyle.solid,
//                                 ),
//                                 borderRadius: BorderRadius.circular(8)),
//                             child: Center(
//                               child: Text(
//                                 'Login',
//                                 style: GoogleFonts.spaceGrotesk(
//                                   decoration: TextDecoration.none,
//                                   color: Colors.grey.shade400,
//                                   fontSize: 14,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           );
//         }
//       },
//     );
//   }
// }