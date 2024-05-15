import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../provider/widgets_provider.dart';
import '../../widgets/code_dialog_box.dart';

class SearchTextField extends StatelessWidget {
  final String containerName;

  final String codeSnippet;
  const SearchTextField(
      {super.key, required this.containerName, required this.codeSnippet});

  @override
  Widget build(BuildContext context) {
    final widgetProvider = Provider.of<WidgetsProvider>(context);
    return MouseRegion(
      onEnter: (event) {
        widgetProvider.setSearchContainerHovered(true);
      },
      onExit: (event) {
        widgetProvider.setSearchContainerHovered(false);
      },
      child: Stack(
        children: [
          SearchContainer2(),
          Visibility(
            visible: widgetProvider.searchContainerHovered,
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
                          containerName,
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
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchContainer2 extends StatefulWidget {
  const SearchContainer2({Key? key}) : super(key: key);

  @override
  _SearchContainer2State createState() => _SearchContainer2State();
}

class _SearchContainer2State extends State<SearchContainer2> {
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
    return Container(
      height: 530,
      width: 500,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.onSecondary,
          width: 0.8,
        ),
        color: Theme.of(context).colorScheme.background,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.secondary,
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Container(
          height: 350,
          width: 400,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade800, width: 0.8),
            color: Theme.of(context).colorScheme.background,
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
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                          hintText: 'Type a command or search..',
                          hintStyle: GoogleFonts.besley(
                            decoration: TextDecoration.none,
                            color: Theme.of(context).colorScheme.tertiary,
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
                    color: Theme.of(context).colorScheme.tertiary,
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
                              : Theme.of(context).colorScheme.background,
                          child: Text(
                            filteredSuggestions[index],
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.tertiary,
                            ),
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
    );
  }
}
