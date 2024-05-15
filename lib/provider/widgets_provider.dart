import 'package:flutter/material.dart';

class WidgetsProvider extends ChangeNotifier {
  bool _isHovered = false;
  bool get isHovered => _isHovered;

  void setHovered(bool value) {
    _isHovered = value;
    notifyListeners();
  }

  bool _notificationHovered = false;
  bool get notificationHovered => _notificationHovered;
  void setNotificationHovered(bool value) {
    _notificationHovered = value;
    notifyListeners();
  }

  bool _socialButtonHovered = false;
  bool get socialButtonHovered => _socialButtonHovered;
  void setSocialButtonHovered(bool value) {
    _socialButtonHovered = value;
    notifyListeners();
  }

  bool _tweetCardHovered = false;
  bool get tweetCardHovered => _tweetCardHovered;
  void setTweetCardHovered(bool value) {
    _tweetCardHovered = value;
    notifyListeners();
  }

  bool _searchContainerHovered = false;
  bool get searchContainerHovered => _searchContainerHovered;
  void setSearchContainerHovered(bool value) {
    _searchContainerHovered = value;
    notifyListeners();
  }

  // bool _universalContainerHovered = false;
  // bool get universalContainerHovered => _universalContainerHovered;
  // void setUniversalContainerHovered(bool value) {
  //   _universalContainerHovered = value;
  //   notifyListeners();
  // }

  bool _isSwitched = false;
  bool get isSwitched => _isSwitched;
  void toggleSwitch(bool value) {
    _isSwitched = value;
    notifyListeners();
  }

  bool _isChecked = false;
  bool get isChecked => _isChecked;
  void toggleCheckbox(bool value) {
    _isChecked = value;
    notifyListeners();
  }

  double _currentSliderValue = 20;

  double get currentSliderValue => _currentSliderValue;

  void setSliderValue(double value) {
    _currentSliderValue = value;
    notifyListeners();
  }

  String? _selectedOption;

  String? get selectedOption => _selectedOption;

  void setSelectedOption(String? value) {
    _selectedOption = value;
    notifyListeners();
  }

  DateTime? _selectedDate;

  DateTime? get selectedDate => _selectedDate;

  void setSelectedDate(DateTime? date) {
    _selectedDate = date;
    notifyListeners();
  }

  bool _isButtonClicked = false;

  bool get isButtonClicked => _isButtonClicked;

  void toggleButtonState() {
    _isButtonClicked = !_isButtonClicked;
    notifyListeners();
  }

  bool _obscureText = true;

  bool get obscureText => _obscureText;

  void toggleVisibility() {
    _obscureText = !_obscureText;
    notifyListeners();
  }
}
