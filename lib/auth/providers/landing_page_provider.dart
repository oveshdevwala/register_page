import 'package:flutter/material.dart';

class LandingPageProvider extends ChangeNotifier {
  final _pageController = PageController(initialPage: 0);
  PageController get pageController => _pageController;
  int _pageIndex = 0;
  get pageIndex => _pageIndex;
  set pageIndex(value) {
    _pageIndex = value;
   
  }
  changeSlide(int value){
 _pageController.animateToPage(value,
        duration: const Duration(milliseconds: 300), curve: Curves.linear);
    notifyListeners();
  }
}
