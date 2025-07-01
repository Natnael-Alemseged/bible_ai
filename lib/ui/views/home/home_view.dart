import 'package:bible_ai/core/constants/app_colors.dart';
import 'package:bible_ai/core/constants/app_text_style.dart';
import 'package:bible_ai/core/constants/ui_helpers.dart';
import 'package:bible_ai/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../gen/assets.gen.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpaceMiddle,

              verticalSpaceMedium,

              // 🔥 Title
              const Text(
                'Chat with Bible and non-bible characters',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: blackColor,
                ),
              ),

              verticalSpaceMedium,

              // 🔥 Character Avatars
              _buildCharacterAvatars(viewModel),

              verticalSpaceMedium,

              // 🔥 Bible Verse Section
              _buildBibleVerseSection(viewModel,context),

              const Spacer(),

              // 🔥 User Input Section
              _buildUserInputSection(viewModel),

              verticalSpaceMedium,

              // 🔥 Action Button
              AppButton(
                text: 'Ask Bible AI',
                onPressed: viewModel.askBibleAi,
              ),
              verticalSpaceMedium,
            ],
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}

// 🔥 Helper Methods

/// Builds the character avatars section
Widget _buildCharacterAvatars(HomeViewModel viewModel) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: viewModel.characters.map((char) {
        return Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50, // This controls the size of the circle itself
                child: ClipOval( // Ensures the image is clipped to a circle
                  child: Image.asset(
                    char['image']!,
                    width: 100, // Desired width
                    height: 100, // Desired height
                    fit: BoxFit.cover, // Ensures the image covers the area, potentially cropping
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                char['name']!,
                style:AppTextStyle.h4Normal,

              ),
            ],
          ),
        );
      }).toList(),
    ),
  );
}


/// Builds the Bible verse section
Widget _buildBibleVerseSection(HomeViewModel viewModel, BuildContext context) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    child: Container(
      color: const Color(0xFFFFFAEC),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔥 Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Chip(
                label: Text('Daily verse',style: AppTextStyle.h4Normal,),
                backgroundColor: Color(0xFFFFF0C3),
                labelStyle: TextStyle(color: Colors.white),
              ),
              Text(
                viewModel.verseReference,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: blackColor,
                ),
              ),
            ],
          ),

          verticalSpaceSmall,

          // 🔥 Verse Text
          Text(
            viewModel.dailyVerse,
            style: const TextStyle(fontSize: 16, color: darkGreyColor),
          ),

          verticalSpaceSmall,

          // 🔥 Action Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    color: const Color(0xFFFFF0C3),
                    icon: const Icon(Icons.share,

                      color:blackColor ),
                    onPressed: viewModel.onShareVerse,
                    tooltip: 'Share verse',
                  ),
                  IconButton(
                    color:  const Color(0xFFFFF0C3),
                    icon: Icon(
                      viewModel.isVerseFavorited
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: blackColor,
                    ),
                    onPressed: viewModel.toggleFavorite,
                    tooltip: 'Favorite verse',
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () => viewModel.readFullChapter(context),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                   backgroundColor: const Color(0xFFFFF0C3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                ),
                child: const Text(
                  'Read full chapter',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}



/// Builds the user input section
Widget _buildUserInputSection(HomeViewModel viewModel) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Ask Bible Ai about anything',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: blackColor,
        ),
      ),
      verticalSpaceSmall,
      SizedBox(
        height: 46, // ensures proportion like the screenshot
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: viewModel.suggestedQuestions.length,
          separatorBuilder: (_, __) => const SizedBox(width: 8),
          itemBuilder: (context, index) {
            final question = viewModel.suggestedQuestions[index];
            return InkWell(
              onTap: () => viewModel.askSuggestedQuestion(question),
              child: Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.chat_bubble_outline,
                        color: Colors.grey, size: 18),
                    const SizedBox(width: 6),
                    Text(
                      question,
                      style: const TextStyle(
                        fontSize: 14,
                        color: darkGreyColor,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ],
  );
}


