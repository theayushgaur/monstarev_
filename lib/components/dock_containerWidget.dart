import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/code_dialog_box.dart';

class DockContainer extends StatefulWidget {
  final String containerName;
  final String codeSnippet;
  const DockContainer({
    super.key,
    required this.codeSnippet,
    required this.containerName,
  });

  @override
  _DockContainerState createState() => _DockContainerState();
}

class _DockContainerState extends State<DockContainer> {
  List<bool> _Hovered = List.filled(6, false);
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: Stack(
        children: [
          Container(
            height: 530,
            // width: 562.5,
            width: 500,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              border: Border.all(
                color: Theme.of(context).colorScheme.onSecondary,
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
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Center(
                child: Container(
                  height: 80,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    border: Border.all(
                      color: Colors.grey.shade800,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildBouncingIcon(
                          'assets/images/Facebook Circled.svg', 0),
                      _buildBouncingIcon('assets/images/GitHub(2).svg', 1),
                      _buildBouncingIcon('assets/images/Google.svg', 2),
                      _buildBouncingIcon('assets/images/Apple Logo(2).svg', 3),
                      _buildBouncingIcon('assets/images/Apple Logo(2).svg', 4),
                      _buildBouncingIcon('assets/images/GitHub(2).svg', 5),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: _isHovered,
            child: Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 90,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.containerName,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
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
                              modalSheet(context, widget.codeSnippet);
                            },
                            child: Center(
                              // modalSheet(context, widget.codeSnippet);

                              child: Icon(
                                Icons.code,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBouncingIcon(String iconData, int index) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _Hovered[index] = true;
        });
      },
      onExit: (_) {
        setState(() {
          _Hovered[index] = false;
        });
      },
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 2.0, end: _Hovered[index] ? 1.5 : 1.0),
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        builder: (context, scale, child) {
          return Transform.scale(
            scale: scale,
            child: child,
          );
        },
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0.0, end: _Hovered[index] ? -5.0 : 0.0),
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          builder: (context, offset, child) {
            return Transform.translate(
              offset: Offset(0, offset),
              child: child,
            );
          },
          child: Container(
            width: 50, // Adjust size as needed
            height: 50, // Adjust size as needed
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.transparent),
            child: SvgPicture.asset(iconData),
          ),
        ),
      ),
    );
  }
}
