// import 'package:stacked/stacked.dart';
//
// import '../../../gen/assets.gen.dart';
// import 'package:flutter/material.dart';
//
// class ChatViewModel extends BaseViewModel {
//   TextEditingController inputController = TextEditingController();
//
//
//   final ScrollController scrollController = ScrollController();
//
//   void scrollToBottom() {
//     Future.delayed(const Duration(milliseconds: 100), () {
//       if (scrollController.hasClients) {
//         scrollController.animateTo(
//           scrollController.position.maxScrollExtent,
//           duration: const Duration(milliseconds: 300),
//           curve: Curves.easeOut,
//         );
//       }
//     });
//   }
//
//
//
//   List<Map<String, String>> messages = []; // Example: [{'role': 'user', 'text': 'Hi'}]
//
//   bool showTypingIndicator = false;
//
//   void handlePrompt(String text) {
//     addMessage('user', text);
//     notifyListeners();
//
//     // Show typing indicator first
//     Future.delayed(const Duration(milliseconds: 300), () {
//       showTypingIndicator = true;
//       notifyListeners();
//       scrollToBottom(); // scroll when typing appears
//     });
//
//     // Simulate AI response delay
//     Future.delayed(const Duration(seconds: 2), () {
//       showTypingIndicator = false;
//       addMessage('ai', getStaticReplyFor(text));
//       notifyListeners();
//       scrollToBottom(); // scroll when AI reply is shown
//     });
//   }
//
//
//
//   void onSendPressed() {
//     final text = inputController.text.trim();
//     if (text.isNotEmpty) {
//       inputController.clear();
//       if (!chatStarted) chatStarted = true;
//       handlePrompt(text);
//       notifyListeners();
//     }
//   }
//
//
//   void addMessage(String role, String text) {
//     messages.add({'role': role, 'text': text});
//     notifyListeners();
//   }
//
//   String getStaticReplyFor(String prompt) {
//     // Optional: Return a static answer or use simple logic
//     return "That's a great question. Let me tell you more about it.";
//   }
//
//
//   void sendMessage() {
//     final text = inputController.text.trim();
//     if (text.isEmpty) return;
//
//     messages.insert(0, {'text': text, 'sender': 'user'});
//     inputController.clear();
//     notifyListeners();
//
//     // Simulate dummy AI reply
//     Future.delayed(const Duration(milliseconds: 600), () {
//       messages.insert(0, {
//         'text': 'This is a dummy Bible Ai response to: "$text"',
//         'sender': 'ai'
//       });
//       notifyListeners();
//     });
//   }
//
//   final List<Map<String, String>> characters = [
//     {'name': 'Moses', 'image': Assets.moses.path},
//     {'name': 'David', 'image': Assets.david.path},
//     {'name': 'Paul', 'image': Assets.paul.path},
//     {'name': 'Billy Graham', 'image': Assets.billyGraham.path},
//     {'name': 'C.S Lewis', 'image': Assets.cSLewis.path},
//     {'name': 'John Piper', 'image': Assets.johnPiper.path},
//     {'name': 'Jordan Peterson', 'image': Assets.jordanPeterson.path},
//     {'name': 'Mary', 'image': Assets.mary.path},
//     {'name': 'Abraham', 'image': Assets.abraham.path},
//   ];
//
//   final List<String> suggestions = [
//     'What is eternal Life?',
//     'What does Jesus say about love?',
//     'How can I overcome fear and anxiety?',
//     'How do I become saved?',
//   ];
//
//   Map<String, String>? selectedCharacter;
//   bool showCharacterSelector = false;
//
//   bool chatStarted = false;
//
//   get isTyping => null;
//
//   void startChatWith(String message) {
//     chatStarted = true;
//     handlePrompt(message);
//   }
//
//
//
//   void toggleCharacterSelector() {
//     showCharacterSelector = !showCharacterSelector;
//     notifyListeners();
//   }
//
//   void selectCharacter(Map<String, String> character) {
//     selectedCharacter = character;
//     showCharacterSelector = false;
//     notifyListeners();
//   }
//
//
//
//   void onMicPressed() {
//     // Integrate speech to text later
//     debugPrint('Mic pressed');
//   }
// }

import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

class ChatViewModel extends BaseViewModel {
  TextEditingController inputController = TextEditingController();
  final ScrollController scrollController = ScrollController();

  void scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (scrollController.hasClients) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  ChatViewModel() {
    inputController.addListener(_onInputChanged);
  }

  void _onInputChanged() {
    notifyListeners(); // ensures the icon updates
  }

  List<Map<String, String>> messages =
      []; // Example: [{'role': 'user', 'text': 'Hi'}]

  bool _isTyping = false;

  bool get isTyping => _isTyping;

  void handlePrompt(String text) {
    addMessage('user', text);
    notifyListeners();

    // Show typing indicator
    _isTyping = true;
    notifyListeners();
    scrollToBottom(); // scroll when typing appears

    // Simulate AI response delay
    Future.delayed(const Duration(seconds: 2), () {
      _isTyping = false;
      addMessage('ai', getStaticReplyFor(text));
      notifyListeners();
      scrollToBottom(); // scroll when AI reply is shown
    });
  }

  void onSendPressed() {
    final text = inputController.text.trim();
    if (text.isNotEmpty) {
      inputController.clear();
      if (!chatStarted) chatStarted = true;
      handlePrompt(text);
      notifyListeners();
    }
  }

  void addMessage(String role, String text) {
    messages.add({'role': role, 'text': text});
    notifyListeners();
  }

  String getStaticReplyFor(String prompt) {
    // Optional: Return a static answer or use simple logic
    return "That's a great question. Let me tell you more about it.";
  }

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

  bool chatStarted = false;

  void startChatWith(String message) {
    chatStarted = true;
    handlePrompt(message);
  }

  void toggleCharacterSelector() {
    showCharacterSelector = !showCharacterSelector;
    notifyListeners();
  }

  void selectCharacter(Map<String, String> character) {
    selectedCharacter = character;
    showCharacterSelector = false;
    notifyListeners();
  }

  void onMicPressed() {
    // Integrate speech to text later
    debugPrint('Mic pressed');
  }
}
