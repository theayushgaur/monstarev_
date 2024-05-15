import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchContainer1 extends StatefulWidget {
  const SearchContainer1({Key? key}) : super(key: key);

  @override
  _SearchContainer1State createState() => _SearchContainer1State();
}

class _SearchContainer1State extends State<SearchContainer1> {
  Map<int, bool> isHoveredMap = {};
  TextEditingController searchController = TextEditingController();
  List<String> suggestions = [
    'Buttons',
    'Tweet card',
    'Notification Containers'
  ];

  List<String> filteredSuggestions = [];

  @override
  void initState() {
    filteredSuggestions = suggestions;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: GestureDetector(
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
          content: Container(
            height: 400,
            width: 500,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade800, width: 0.8),
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextField(
                          controller: searchController,
                          onChanged: (value) {
                            setState(() {
                              filteredSuggestions = suggestions
                                  .where((suggestion) => suggestion
                                      .toLowerCase()
                                      .contains(value.toLowerCase()))
                                  .toList();
                            });
                          },
                          autofocus: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.search,
                              color: Colors.grey.shade400,
                            ),
                            hintText: 'Type a command or search..',
                            hintStyle: GoogleFonts.besley(
                              decoration: TextDecoration.none,
                              color: Colors.grey.shade400,
                              fontSize: 15,
                            ),
                            border: InputBorder.none,
                          ),
                          cursorRadius: Radius.circular(0),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey.shade800,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Suggestions',
                    style: GoogleFonts.besley(
                      decoration: TextDecoration.none,
                      color: Colors.grey.shade400,
                      fontSize: 12,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: filteredSuggestions.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          // Handle tap on suggestion
                        },
                        onHover: (hovered) {
                          setState(() {
                            isHoveredMap[index] = hovered;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10.0),
                            color: isHoveredMap[index] ?? false
                                ? Colors.grey.shade700
                                : Colors.black,
                            child: Text(
                              filteredSuggestions[index],
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
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
    );
  }
}
