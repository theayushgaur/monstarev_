// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:project_comp_library/components/buttons/button_1.dart';
// import 'package:project_comp_library/widgets/code_editor_container.dart';

// Future<dynamic> modalSheet(BuildContext context, String containerName,Widget displayWidget, String codeText) async {
//   return showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         contentPadding: EdgeInsets.zero, // Set contentPadding to zero
//         content: Container(
//           height: 800, // Set the height of the container
//           width: 1000, // Set the width of the container
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.grey.shade400),
//             borderRadius: BorderRadius.circular(15),
//             color: const Color.fromRGBO(32, 35, 43, 1),
//           ),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                   height: 50,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(15),
//                       topRight: Radius.circular(15),
//                     ),
//                     color: Colors.white,
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                     child: Row(
//                       children: [
//                         Text(
//                           containerName,
//                           style: GoogleFonts.archivo(
//                             color: Colors.black,
//                             fontSize: 17,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(25.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         height: 100,
//                         decoration: BoxDecoration(
//                           color: const Color.fromRGBO(32, 35, 43, 1),
//                         ),
//                         child: Center(
//                           child: displayWidget,
//                         ),
//                       ),
//                       CodeEditor(
//                         codeSnippet: codeText,
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(25.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         height: 100,
//                         decoration: BoxDecoration(
//                           color: const Color.fromRGBO(32, 35, 43, 1),
//                         ),
//                         child: Center(
//                             child: Button1(buttonName: 'CREATE ACCOUNT')),
//                       ),
//                       CodeEditor(
//                         codeSnippet: '''Container(
//                                 decoration: BoxDecoration(
//                     // color: const Color.fromRGBO(223, 227, 233, 1),
//                     color: Colors.grey.shade400,
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(20),
//                         topRight: Radius.circular(20))),
//                                 child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Icon(Icons.circle, color: Colors.red, size: 13),
//                           SizedBox(
//                               width: MediaQuery.of(context).size.width * 0.002),
//                           Icon(Icons.circle, color: Colors.yellow, size: 13),
//                           SizedBox(
//                               width: MediaQuery.of(context).size.width * 0.002),
//                           Icon(Icons.circle, color: Colors.green, size: 13),
//                         ],
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           modalSheet(context);
//                         },
//                         child: Icon(Icons.code),
//                       ),
//                     ],
//                   ),
//                                 ),
//                               ),''',
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(25.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         height: 100,
//                         decoration: BoxDecoration(
//                           color: const Color.fromRGBO(32, 35, 43, 1),
//                         ),
//                         child: Center(
//                             child: Button1(buttonName: 'CREATE ACCOUNT')),
//                       ),
//                       CodeEditor(
//                         codeSnippet: '''Container(
//                                 decoration: BoxDecoration(
//                     // color: const Color.fromRGBO(223, 227, 233, 1),
//                     color: Colors.grey.shade400,
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(20),
//                         topRight: Radius.circular(20))),
//                                 child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Icon(Icons.circle, color: Colors.red, size: 13),
//                           SizedBox(
//                               width: MediaQuery.of(context).size.width * 0.002),
//                           Icon(Icons.circle, color: Colors.yellow, size: 13),
//                           SizedBox(
//                               width: MediaQuery.of(context).size.width * 0.002),
//                           Icon(Icons.circle, color: Colors.green, size: 13),
//                         ],
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           modalSheet(context);
//                         },
//                         child: Icon(Icons.code),
//                       ),
//                     ],
//                   ),
//                                 ),
//                               ),''',
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     },
//   );
// }

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:project_comp_library/components/buttons/button_1.dart';
// import 'package:project_comp_library/widgets/code_editor_container.dart';
// import 'package:project_comp_library/widgets/modal_display_container.dart';

// Future<dynamic> modalSheet(BuildContext context, String containerName,
//     Widget displayWidget, String codeText) async {
//   return showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         contentPadding: EdgeInsets.zero, // Set contentPadding to zero
//         content: Container(
//           height: 800, // Set the height of the container
//           width: 1000, // Set the width of the container
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.grey.shade400),
//             borderRadius: BorderRadius.circular(15),
//             color: const Color.fromRGBO(32, 35, 43, 1),
//           ),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                   height: 50,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(15),
//                       topRight: Radius.circular(15),
//                     ),
//                     color: Colors.white,
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                     child: Row(
//                       children: [
//                         Text(
//                           containerName,
//                           style: GoogleFonts.archivo(
//                             color: Colors.black,
//                             fontSize: 17,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 ModalDisplayContainer(
//                     displayWidget: displayWidget, codeText: codeText),
//               ],
//             ),
//           ),
//         ),
//       );
//     },
//   );
// }

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:project_comp_library/components/buttons/button_1.dart';
// import 'package:project_comp_library/widgets/code_editor_container.dart';
// import 'package:project_comp_library/widgets/modal_display_container.dart';

// Future<dynamic> modalSheet(
//   BuildContext context,
//   String containerName,
//   Widget displayWidget,
//   // String codeText
// ) async {
//   return showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         contentPadding: EdgeInsets.zero, // Set contentPadding to zero
//         content: Container(
//           height: 800, // Set the height of the container
//           width: 1000, // Set the width of the container
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.grey.shade400),
//             borderRadius: BorderRadius.circular(15),
//             color: const Color.fromRGBO(32, 35, 43, 1),
//           ),
//           child: Column(
//             children: [
//               Container(
//                 height: 50,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(15),
//                     topRight: Radius.circular(15),
//                   ),
//                   color: Colors.white,
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                   child: Row(
//                     children: [
//                       Text(
//                         containerName,
//                         style: GoogleFonts.archivo(
//                           color: Colors.black,
//                           fontSize: 17,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               ModalDisplayContainer(displayWidget: displayWidget),
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monstarev/widgets/code_editor_container.dart';

Future<dynamic> modalSheet(
    BuildContext context,
//  String containerName,
    // Widget displayWidget,
    String codeSnippet) async {
  return showDialog(
    context: context,
    barrierDismissible: true, // Enable dismiss on tap outside
    builder: (BuildContext context) {
      return Stack(
        children: [
          // Blurred background container
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: GestureDetector(
              // Dismiss dialog when tapping outside the content area
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ),
          // Modal sheet
          AlertDialog(
            contentPadding: EdgeInsets.zero,
            content: CodeEditor(codeSnippet: codeSnippet),
            // content: Container(
            //   height: 500,
            //   width: 1000,
            //   decoration: BoxDecoration(
            //     border: Border.all(color: Colors.grey.shade400),
            //     borderRadius: BorderRadius.circular(15),
            //     color: const Color.fromRGBO(32, 35, 43, 1),
            //   ),
            //   child: Column(
            //     children: [
            //       Container(
            //         height: 50,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.only(
            //             topLeft: Radius.circular(15),
            //             topRight: Radius.circular(15),
            //           ),
            //           color: Colors.white,
            //         ),
            //         child: Padding(
            //           padding: const EdgeInsets.symmetric(horizontal: 20.0),
            //           child: Row(
            //             children: [
            //               Text(
            //                 containerName,
            //                 style: GoogleFonts.archivo(
            //                   color: Colors.black,
            //                   fontSize: 17,
            //                   fontWeight: FontWeight.w600,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //       ModalDisplayContainer(
            //         displayWidget: displayWidget,
            //         codeSnippet: codeSnippet,
            //       ),
            //     ],
            //   ),
            // ),
          ),
        ],
      );
    },
  );
}

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:project_comp_library/components/buttons/button_1.dart';
// import 'package:project_comp_library/widgets/code_editor_container.dart';
// import 'package:project_comp_library/widgets/modal_display_container.dart';

// Future<dynamic> modalSheet(
//     BuildContext context, String containerName, Widget displayWidget) async {
//   return showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         contentPadding: EdgeInsets.zero,
//         content: Container(
//           height: 800,
//           width: 1200,
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.grey.shade400),
//             borderRadius: BorderRadius.circular(15),
//             color: const Color.fromRGBO(32, 35, 43, 1),
//           ),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                   height: 50,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(15),
//                       topRight: Radius.circular(15),
//                     ),
//                     color: Colors.white,
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                     child: Row(
//                       children: [
//                         Text(
//                           containerName,
//                           style: GoogleFonts.archivo(
//                             color: Colors.black,
//                             fontSize: 17,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 ModalDisplayContainer(
//                   displayWidget: displayWidget,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     },
//   );
// }
