import 'package:bible_ai/core/constants/app_colors.dart';
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
              // 🔥 Search Bar
              _buildSearchBar(),

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
              _buildCharacterAvatars(),

              verticalSpaceMedium,

              // 🔥 Bible Verse Section
              _buildBibleVerseSection(),

              verticalSpaceMedium,

              // 🔥 User Input Section
              _buildUserInputSection(),

              verticalSpaceMedium,

              // 🔥 Action Button
              AppButton(
                text: 'Ask Bible AI',
                onPressed: viewModel.askBibleAi,
              ),
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

/// Builds the search bar at the top
Widget _buildSearchBar() {
  return Row(
    children: [
      Expanded(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search Bible Verses, Chapters, Quotes',
            hintStyle: const TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.grey[200],
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
      ),
      const SizedBox(width: 8),
      const Icon(Icons.search, color: Colors.grey),
    ],
  );
}

/// Builds the character avatars section
Widget _buildCharacterAvatars() {
  final characters = [
    {'name': 'Moses', 'image': Assets.moses.path},
    {'name': 'David', 'image': Assets.david.path},
    {'name': 'Paul', 'image': Assets.paul.path},
  ];

  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: characters.map((char) {
        return Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            children: [
              CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage(char['image']!),
              ),
              const SizedBox(height: 8),
              Text(
                char['name']!,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: blackColor,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    ),
  );
}

/// Builds the Bible verse section
Widget _buildBibleVerseSection() {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Chip(
                label: Text('Daily verse'),
                backgroundColor: Colors.amber,
                labelStyle: TextStyle(color: Colors.white),
              ),
              Text(
                'Proverbs 3:5-6',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: blackColor,
                ),
              ),
            ],
          ),
          verticalSpaceSmall,
          const Text(
            'Trust in the Lord with all your heart and lean not on your own understanding; in all your ways submit to Him, and He will make your paths straight.',
            style: TextStyle(
              fontSize: 16,
              color: darkGreyColor,
            ),
          ),
          verticalSpaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.share, color: Colors.amber),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.favorite_border, color: Colors.amber),
                onPressed: () {},
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: const Text('Read full chapter'),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

/// Builds the user input section
Widget _buildUserInputSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Ask Bible AI about anything',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: blackColor,
        ),
      ),
      verticalSpaceSmall,
      Row(
        children: [
          const Icon(Icons.chat_bubble_outline, color: Colors.grey),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              'What does Jesus say about love?',
              style: const TextStyle(
                fontSize: 14,
                color: darkGreyColor,
              ),
            ),
          ),
          const SizedBox(width: 8),
          const Icon(Icons.add_circle, color: Colors.amber),
        ],
      ),
      const Divider(color: Colors.grey),
      Row(
        children: [
          const Icon(Icons.chat_bubble_outline, color: Colors.grey),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              'How...',
              style: const TextStyle(
                fontSize: 14,
                color: darkGreyColor,
              ),
            ),
          ),
          const SizedBox(width: 8),
          const Icon(Icons.add_circle, color: Colors.amber),
        ],
      ),
    ],
  );
}
