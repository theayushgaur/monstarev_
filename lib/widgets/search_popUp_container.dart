import 'dart:ui';

import 'package:flutter/material.dart';

import 'search_container.dart';

Future<dynamic> searchBoxPopUp(BuildContext context) async {
  return showDialog(
    context: context,
    barrierDismissible: true, // Enable dismiss on tap outside
    builder: (BuildContext context) {
      return SearchContainer1();
    },
  );
}
