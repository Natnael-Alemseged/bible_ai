import 'package:bible_ai/app/app.locator.dart';
import 'package:bible_ai/app/app.router.dart';
import 'package:bible_ai/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../gen/assets.gen.dart';

class OnboardingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  int _currentIndex = 0;

  /// Characters list for page 3
  final List<Map<String, dynamic>> characters = [
    {
      'name': 'Paul',
      'image': Assets.paul.path,
    },
    {
      'name': 'Mary',
      'image': Assets.mary.path,
    },
    {
      'name': 'Abraham',
      'image': Assets.abraham.path,
    },
    {
      'name': 'Jordan Peterson',
      'image': Assets.jordanPeterson.path,
    },
    {
      'name': 'C.S Lewis',
      'image': Assets.cSLewis.path,
    },
  ];

  int selectedCharacterIndex = 2; // Center one selected by default

  void selectCharacter(int index) {
    selectedCharacterIndex = index;
    notifyListeners();
  }

  /// Onboarding pages data
  final List<Map<String, dynamic>> _pages = [
    {
      'icon': Icons.menu_book_outlined,
      'image': Assets.bibleRipple.path,
      'title': "Welcome to Bible AI",
      'subtitle': "Find quick bible answers\nto questions to life questions",
      'button_text': 'Get Started',
      'showRipple': true,
      'shape': BoxShape.circle,
      'iconBackgroundColor': primaryColor,
      'iconSize': 50.0,
    },
    {
      'image': Assets.bibleMinimal.path,
      'title': "Ask anything and get biblical answers",
      'subtitle': "Find quick bible answers\nto questions to life questions",
      'button_text': 'Continue',
      'showRipple': false,
      'shape': BoxShape.circle,
      'iconBackgroundColor': whiteColor,
      'iconSize': 60.0,
    },
    {
      'title': "Talk to AI Bible Characters",
      'subtitle': "Find quick bible answers to\nquestions to life questions",
      'button_text': 'Continue',
      'showCharacters': true, // Show character selector instead of icon
    },
    {
      'icon': Icons.menu_book_outlined,
      'image': Assets.bibleRipple.path,
      'title': "Ask anything and get biblical answers",
      'subtitle': "Find quick bible answers to\nquestions to life questions",
      'button_text': 'Create an account',
      'secondary_button_text': 'Continue without an Account',
      'showRipple': true,
      'shape': BoxShape.circle,
      'iconBackgroundColor': primaryColor,
      'iconSize': 50.0,
    },
  ];

  Map<String, dynamic> get currentPage => _pages[_currentIndex];

  int get currentIndex => _currentIndex;

  void onContinue() {
    if (_currentIndex < _pages.length - 1) {
      _currentIndex++;
      notifyListeners();
    } else {
      _navigationService.replaceWithLoginView();
    }
  }
}
