import 'package:bible_ai/app/app.bottomsheets.dart';
import 'package:bible_ai/app/app.dialogs.dart';
import 'package:bible_ai/app/app.locator.dart';
import 'package:bible_ai/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  bool isVerseFavorited = false;

  void toggleFavorite() {
    isVerseFavorited = !isVerseFavorited;
    notifyListeners();
  }

  void onShareVerse() {
    // This can use Share package or clipboard logic
    debugPrint('Sharing daily verse...');
  }

  void readFullChapter(BuildContext context) {
    // Later replace with actual navigation

  }



  final List<Map<String, String>> characters = [
    {'name': 'Moses', 'image': Assets.moses.path},
    {'name': 'David', 'image': Assets.david.path},
    {'name': 'Paul', 'image': Assets.paul.path},
    {'name': 'Billy Graham', 'image': Assets.billyGraham.path},
    {'name': 'C.S Lewis', 'image': Assets.cSLewis.path},
    {'name': 'John Piper', 'image': Assets.johnPiper.path},
    {'name': 'Jordan Peterson', 'image': Assets.jordanPeterson.path},
    {'name': 'Mary', 'image': Assets.mary.path},
    {'name': 'Abraham', 'image': Assets.abraham.path},
  ];

  final String dailyVerse = 'Trust in the Lord with all your heart and lean not on your own understanding; in all your ways submit to Him, and He will make your paths straight.';
  final String verseReference = 'Proverbs 3:5-6';

  final List<String> suggestedQuestions = [
    'What does Jesus say about love?',
    'How should I pray?',
    'What is faith?',
    'Who is the Holy Spirit?',
    'What’s the meaning of grace?',
    'Why do we suffer?',
    'How to forgive?',
    'What is heaven like?',
  ];


  void askBibleAi() {
    // Implement AI trigger
  }



  void onFavoriteVerse() {
    // Implement favorite logic
  }



  void askSuggestedQuestion(String question) {
    // Implement question submission
  }

}
