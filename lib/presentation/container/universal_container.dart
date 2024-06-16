import 'package:flutter/material.dart';

import '../../widgets/code_dialog_box.dart';

class UniversalContainerContainer extends StatelessWidget {
  final String ContainerName;

  final Widget newWidget;
  final String codeSnippet;

  const UniversalContainerContainer({
    Key? key,
    required this.ContainerName,
    required this.newWidget,
    required this.codeSnippet,
  }) : super(key: key);

  // bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      // onEnter: (_) {
      //   setState(() {
      //     _isHovered = true;
      //   });
      // },
      // onExit: (_) {
      //   setState(() {
      //     _isHovered = false;
      //   });
      // },
      child: Container(
        height: 280,
        width: 375,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade800, width: 0.8),
          color: Theme.of(context).colorScheme.onTertiary,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ContainerName,
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade700,
                        borderRadius: BorderRadius.circular(8)),
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
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    newWidget,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // child: Stack(
      //   children: [
      //     container(),
      //     // Visibility(
      //     //   visible: _isHovered,
      //     //   child: Positioned(
      //     //     bottom: 0,
      //     //     left: 0,
      //     //     right: 0,
      //     //     child: Padding(
      //     //       padding: const EdgeInsets.symmetric(horizontal: 20.0),
      //     //       child: Container(
      //     //         decoration: BoxDecoration(
      //     //           borderRadius: BorderRadius.circular(8),
      //     //         ),
      //     //         height: 90,
      //     //         child: Padding(
      //     //           padding: const EdgeInsets.symmetric(horizontal: 20.0),
      //     //           child: Row(
      //     //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     //             children: [
      //     //               Text(
      //     //                 widget.ContainerName,
      //     //                 style: TextStyle(
      //     //                   color: Theme.of(context).colorScheme.tertiary,
      //     //                 ),
      //     //               ),
      //     //               Container(
      //     //                 height: 30,
      //     //                 width: 50,
      //     //                 decoration: BoxDecoration(
      //     //                   color: Colors.grey.shade700,
      //     //                   borderRadius: BorderRadius.circular(5),
      //     //                 ),
      //     //                 child: GestureDetector(
      //     //                   onTap: () {
      //     //                     modalSheet(context, widget.codeSnippet);
      //     //                   },
      //     //                   child: const Center(
      //     //                     child: Icon(
      //     //                       Icons.code,
      //     //                       color: Colors.white,
      //     //                     ),
      //     //                   ),
      //     //                 ),
      //     //               ),
      //     //             ],
      //     //           ),
      //     //         ),
      //     //       ),
      //     //     ),
      //     //   ),
      //     // ),
      //   ],
      // ),
    );
  }
}

//   Widget container() {
//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 300),
//       height: 280,
//       width: 375,
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey.shade800, width: 0.8),
//         color:
//             // isHovered ? Colors.grey.shade900 :
//             Theme.of(context).colorScheme.onTertiary,
//         borderRadius: BorderRadius.circular(5),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   ContainerName,
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 Container(
//                   height: 30,
//                   width: 50,
//                   decoration: BoxDecoration(
//                       color: Colors.grey.shade700,
//                       borderRadius: BorderRadius.circular(8)),
//                   child: GestureDetector(
//                     onTap: () {
//                       modalSheet(context, codeSnippet);
//                     },
//                     child: Center(
                  

//                       child: Icon(
//                         Icons.code,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Expanded(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   newWidget,
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class UniversalContainerContainer extends StatefulWidget {
//   final String containerName;
//   final VoidCallback onTap;
//   final Widget newWidget;

//   const UniversalContainerContainer({
//     Key? key,
//     required this.containerName,
//     required this.onTap,
//     required this.newWidget,
//   }) : super(key: key);

//   @override
//   _UniversalContainerContainerState createState() =>
//       _UniversalContainerContainerState();
// }

// class _UniversalContainerContainerState
//     extends State<UniversalContainerContainer> {
//   bool isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (_) {
//         setState(() {
//           isHovered = true;
//         });
//       },
//       onExit: (_) {
//         setState(() {
//           isHovered = false;
//         });
//       },
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 300),
//         height: 240,
//         width: 300,
//         decoration: BoxDecoration(
//           color: isHovered
//               ? Color.fromRGBO(22, 22, 22, 1)
//               : Color.fromRGBO(18, 18, 18, 1),
//           borderRadius: BorderRadius.circular(5),
//           boxShadow: isHovered
//               ? [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.5),
//                     blurRadius: 10,
//                     spreadRadius: 2,
//                   ),
//                 ]
//               : [],
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     widget.containerName,
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(
//                       Icons.code,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ],
//               ),
//               Expanded(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     widget.newWidget,
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
