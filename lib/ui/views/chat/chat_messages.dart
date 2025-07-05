import 'package:flutter/material.dart';

class ChatMessages extends StatelessWidget {
  final List<Map<String, String>> messages;
  final ScrollController controller;
  final bool showTypingIndicator;

  const ChatMessages({
    super.key,
    required this.messages,
    required this.controller,
    required this.showTypingIndicator,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        controller: controller,
        itemCount: messages.length + (showTypingIndicator ? 1 : 0),
        padding: const EdgeInsets.symmetric(vertical: 12),
        itemBuilder: (context, index) {
          if (index == messages.length && showTypingIndicator) {
            return Align(
              alignment: Alignment.centerLeft,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(vertical: 4),
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 10,
                      height: 10,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text("Typing...", style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            );
          }

          final msg = messages[index];
          final isUser = msg['role'] == 'user';
          return Align(
            alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 4),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
              decoration: BoxDecoration(
                color: isUser ? Colors.amber : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                msg['text'] ?? '',
                style: const TextStyle(color: Colors.black),
              ),
            ),
          );
        },
      ),
    );
  }
}