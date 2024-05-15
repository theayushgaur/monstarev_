import 'package:flutter/material.dart';

import '../themes/theme.dart';

class ThemeChanger with ChangeNotifier {
  var _themeData = darkTheme;
  ThemeData get thememode => _themeData;
  void setTheme(thememode) {
    _themeData = thememode;
    notifyListeners();
  }
}
