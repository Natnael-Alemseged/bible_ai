import 'package:bible_ai/core/constants/app_colors.dart';
import 'package:bible_ai/core/constants/app_text_style.dart';
import 'package:bible_ai/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../core/constants/ui_helpers.dart';
import 'chat_messages.dart';
import 'chat_viewmodel.dart';

class ChatView extends StackedView<ChatViewModel> {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, ChatViewModel viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpaceMedium,

              // 🔠 Title
              const Text('Ask Bible Ai', style: AppTextStyle.h3Bold),
              verticalSpaceMedium,

              // 🔘 Character selector row
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Choose character to chat with',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: viewModel.toggleCharacterSelector,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.amber.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (viewModel.selectedCharacter != null)
                            CircleAvatar(
                              radius: 18,
                              child: ClipOval(
                                child: Image.asset(
                                  viewModel.selectedCharacter!['image']!,
                                  width: 36,
                                  height: 36,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          else
                            Image.asset(
                              Assets.bibleMinimal.path,
                              height: 18,
                            ),
                          const SizedBox(width: 6),
                          Text(
                            viewModel.selectedCharacter?['name'] ?? 'Bible Ai',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          const Icon(Icons.expand_more, size: 18),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              verticalSpaceSmall,

              // 🧍 Character list with animation
              AnimatedSize(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 300),
                  opacity: viewModel.showCharacterSelector ? 1.0 : 0.0,
                  child: viewModel.showCharacterSelector
                      ? SizedBox(
                    height: 90,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: viewModel.characters.length,
                      separatorBuilder: (_, __) =>
                      const SizedBox(width: 16),
                      itemBuilder: (context, index) {
                        final char = viewModel.characters[index];
                        return GestureDetector(
                          onTap: () => viewModel.selectCharacter(char),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 28,
                                backgroundImage:
                                AssetImage(char['image']!),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                char['name']!,
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                      : const SizedBox.shrink(),
                ),
              ),

              if (!viewModel.chatStarted) ...[
                const Spacer(),
                Center(child: Image.asset(Assets.bibleRipple.path, width: 150)),
                const Spacer(),
                const AnimatedDefaultTextStyle(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  style: AppTextStyle.h2Bold,
                  child: Text('How can I help you today?'),
                ),
                const SizedBox(height: 12),
                _buildSuggestionChips(viewModel),
              ] else ...[
                Expanded(
                  child: ChatMessages(
                    messages: viewModel.messages,
                    controller: viewModel.scrollController,
                    showTypingIndicator: viewModel.isTyping,
                  ),
                ),
              ],

              verticalSpaceMedium,

              // 🔠 Input bar
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF4F4F4),
                  borderRadius: BorderRadius.circular(24),
                ),
                height: 50,
                padding: const EdgeInsets.only(left: 16, right: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: viewModel.inputController,
                        onChanged: (_) => viewModel.notifyListeners(),
                        decoration: const InputDecoration(
                          hintText: 'Ask Bible ai',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Container(
                        decoration: BoxDecoration(
                            color: blackColor, shape: BoxShape.circle),
                        child: IconButton(
                          icon: Icon(
                            viewModel.inputController.text.trim().isNotEmpty
                                ? Icons.send
                                : Icons.mic,
                            color: whiteColor,
                          ),
                          onPressed:
                          viewModel.inputController.text.trim().isNotEmpty
                              ? viewModel.onSendPressed
                              : viewModel.onMicPressed,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              verticalSpaceMedium,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSuggestionChip(String text, ChatViewModel viewModel) {
    return GestureDetector(
      onTap: () => viewModel.handlePrompt(text),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 200),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 13),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  @override
  ChatViewModel viewModelBuilder(BuildContext context) => ChatViewModel();

  Widget _buildSuggestionChips(ChatViewModel viewModel) {
    return Column(
      children: [
        SizedBox(
          height: 38,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: (viewModel.suggestions.length / 2).ceil(),
            separatorBuilder: (_, __) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              if (index * 2 >= viewModel.suggestions.length)
                return const SizedBox();
              final suggestion = viewModel.suggestions[index * 2];
              return _buildSuggestionChip(suggestion, viewModel);
            },
          ),
        ),
        verticalSpaceSmall,
        SizedBox(
          height: 38,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: (viewModel.suggestions.length / 2).ceil(),
            separatorBuilder: (_, __) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              if (index * 2 + 1 >= viewModel.suggestions.length) {
                return const SizedBox();
              }
              final suggestion = viewModel.suggestions[index * 2 + 1];
              return _buildSuggestionChip(suggestion, viewModel);
            },
          ),
        ),
      ],
    );
  }
}