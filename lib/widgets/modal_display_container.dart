import 'package:flutter/material.dart';

import 'code_editor_container.dart';

class ModalDisplayContainer extends StatelessWidget {
  final Widget displayWidget;
  final String codeSnippet;
  const ModalDisplayContainer(
      {super.key, required this.displayWidget, required this.codeSnippet});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(32, 35, 43, 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                displayWidget,
                CodeEditor(codeSnippet: codeSnippet),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
