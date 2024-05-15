import 'package:flutter/material.dart';

class TextFieldProvider with ChangeNotifier {
  bool _showContainer = false;

  bool _isHovered = false;
  String _selectedCountry = '';
  List<String> _countries = [
    'USA',
    'Canada',
    'UK',
    'Germany',
    'France',
    'Japan',
    'China',
    'India',
  ];

  bool get showContainer => _showContainer;

  bool get isHovered => _isHovered;
  String get selectedCountry => _selectedCountry;
  List<String> get countries => _countries;

  void toggleContainer() {
    _showContainer = !_showContainer;
    notifyListeners();
  }

  void setHovered(bool value) {
    _isHovered = value;
    notifyListeners();
  }

  void setSelectedCountry(String country) {
    _selectedCountry = country;
    notifyListeners();
  }
}
