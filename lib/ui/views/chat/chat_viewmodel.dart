import 'package:stacked/stacked.dart';

import '../../../gen/assets.gen.dart';
import 'package:flutter/material.dart';

class ChatViewModel extends BaseViewModel {
  TextEditingController inputController = TextEditingController();

  List<Map<String, String>> messages = [];

  void sendMessage() {
    final text = inputController.text.trim();
    if (text.isEmpty) return;

    messages.insert(0, {'text': text, 'sender': 'user'});
    inputController.clear();
    notifyListeners();

    // Simulate dummy AI reply
    Future.delayed(const Duration(milliseconds: 600), () {
      messages.insert(0, {
        'text': 'This is a dummy Bible Ai response to: "$text"',
        'sender': 'ai'
      });
      notifyListeners();
    });
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

  final List<String> suggestions = [
    'What is eternal Life?',
    'What does Jesus say about love?',
    'How can I overcome fear and anxiety?',
    'How do I become saved?',
  ];

  Map<String, String>? selectedCharacter;
  bool showCharacterSelector = false;



  void toggleCharacterSelector() {
    showCharacterSelector = !showCharacterSelector;
    notifyListeners();
  }

  void selectCharacter(Map<String, String> character) {
    selectedCharacter = character;
    showCharacterSelector = false;
    notifyListeners();
  }

  void handlePrompt(String prompt) {
    inputController.text = prompt;
    // You can auto-trigger search here or wait for user to submit
    notifyListeners();
  }

  void onMicPressed() {
    // Integrate speech to text later
    debugPrint('Mic pressed');
  }
}

