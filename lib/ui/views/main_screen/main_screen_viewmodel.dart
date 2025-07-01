import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MainScreenViewModel extends BaseViewModel {
  final PageController pageController = PageController();

  int currentIndex = 0;

  void setPage(int index) {
    currentIndex = index;
    pageController.jumpToPage(index);
    notifyListeners();
  }

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
