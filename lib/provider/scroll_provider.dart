import 'package:flutter/material.dart';

class ScrollControllerProvider with ChangeNotifier {
  ScrollController _scrollController = ScrollController();

  ScrollController get scrollController => _scrollController;

  ScrollControllerProvider() {
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels == 0) {
          notifyListeners();
        }
      }
    });
  }

  void scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }
}
