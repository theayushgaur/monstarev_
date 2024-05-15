import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CodeEditor extends StatefulWidget {
  final String codeSnippet;
  const CodeEditor({Key? key, required this.codeSnippet});

  @override
  State<CodeEditor> createState() => _CodeEditorState();
}

class _CodeEditorState extends State<CodeEditor> {
  bool _isCopied = false;

  void _copyCode() {
    Clipboard.setData(ClipboardData(text: widget.codeSnippet));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Code copied')),
    );
    setState(() {
      _isCopied = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: MediaQuery.of(context).size.width * 0.38,
      decoration: BoxDecoration(
        // color: const Color.fromRGBO(18, 24, 38, 1),
        color: Colors.black,
        // const Color.fromRGBO(24, 24, 27, 1),
        border: Border.all(
          color: Colors.grey.shade800,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade800,
                width: 0.5,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              // color: const Color.fromRGBO(223, 227, 233, 1),
              color: Colors.grey.shade800,
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.circle, color: Colors.red, size: 13),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.002),
                      Icon(Icons.circle, color: Colors.yellow, size: 13),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.002),
                      Icon(Icons.circle, color: Colors.green, size: 13),
                    ],
                  ),
                  GestureDetector(
                    onTap: _copyCode,
                    child: Icon(
                      _isCopied ? Icons.done_all : Icons.copy,
                      size: 20,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: 0.5,
              color: Colors.grey),
          SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 30,
                    margin: const EdgeInsets.only(right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: widget.codeSnippet
                          .split("\n")
                          .asMap()
                          .entries
                          .map((entry) {
                        int lineNumber = entry.key + 1;
                        return Text('  $lineNumber   ',
                            style: TextStyle(color: Colors.grey.shade400));
                      }).toList(),
                    ),
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: GoogleFonts.jetBrainsMono(
                            color: Colors.grey.shade400),
                        children: _buildSpans(widget.codeSnippet),
                      ),
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

  List<TextSpan> _buildSpans(String code) {
    List<TextSpan> spans = [];
    int start = 0;
    final keywords = {
      'Container': Colors.red,
      'required': Colors.blue,
      '@override': Colors.green,
      'const': Colors.purple,
      'extends': Colors.purple,
      'class': Colors.purple,
      'final': Colors.purple,
    };

    while (true) {
      int? nextKeywordIndex;
      String? nextKeyword;
      for (String keyword in keywords.keys) {
        int index = code.indexOf(keyword, start);
        if (index != -1 &&
            (nextKeywordIndex == null || index < nextKeywordIndex)) {
          nextKeywordIndex = index;
          nextKeyword = keyword;
        }
      }

      if (nextKeywordIndex == null) {
        spans.add(TextSpan(text: code.substring(start)));
        break;
      } else {
        spans.add(TextSpan(text: code.substring(start, nextKeywordIndex)));
        spans.add(TextSpan(
            text: nextKeyword!,
            style: TextStyle(color: keywords[nextKeyword]!)));
        start = nextKeywordIndex + nextKeyword.length;
      }
    }
    return spans;
  }
}
