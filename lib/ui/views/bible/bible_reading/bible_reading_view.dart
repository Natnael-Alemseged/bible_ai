import 'package:bible_ai/core/constants/app_colors.dart';
import 'package:bible_ai/core/constants/app_text_style.dart';
import 'package:bible_ai/core/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../gen/assets.gen.dart';
import 'bible_reading_viewmodel.dart';

class BibleReadingView extends StackedView<BibleReadingViewModel> {
  final String version;
  final String book;
  final int chapter;
  final String title;

  const BibleReadingView({
    Key? key,
    required this.version,
    required this.book,
    required this.chapter,
    required this.title,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BibleReadingViewModel viewModel,
    Widget? child,
  ) {
    // inside: builder(BuildContext context, BibleReadingViewModel viewModel, Widget? child)
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            verticalSpaceMedium,

            // Top Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: blackColor),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Row(
                    children: [
                      IconButton(
                          icon: Image.asset(Assets.bookmark.path),
                          onPressed: viewModel.toggleBookmark),
                      IconButton(
                          icon: !viewModel.isPlaying
                              ? Image.asset(Assets.play.path)
                              : const Icon(Icons.pause, color: blackColor),
                          onPressed: viewModel.togglePlayPause),
                      IconButton(
                          icon: Image.asset(Assets.adjustmentsVertical.path),
                          onPressed: viewModel.showFilter),
                    ],
                  ),
                ],
              ),
            ),

            // Swipeable Pages + Next Chapter Button
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      controller: viewModel.pageController,
                      itemCount: viewModel.totalChapters,
                      onPageChanged: viewModel.onChapterChanged,
                      itemBuilder: (context, index) {
                        final chapterNumber = index + 1;
                        return Column(
                          children: [
                            // Yellow Chapter Header
                            Container(
                              width: screenWidth(context),
                              margin: const EdgeInsets.symmetric(horizontal: 16),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                              decoration: BoxDecoration(
                                color: primaryColorLight,
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Center(
                                child: Text('Chapter $chapterNumber',
                                    style: AppTextStyle.h3Bold.copyWith(
                                        color: borderColor, fontSize: 22)),
                              ),
                            ),
                            const SizedBox(height: 16),

                            // Chapter Content
                            Expanded(
                              child: SingleChildScrollView(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        height: 1.6),
                                    children: _buildFormattedText(
                                        viewModel.chapterTexts[index]),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),

                  // ✅ Next Chapter Button
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: ElevatedButton(
                      onPressed: viewModel.goToNextChapter,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(color: borderColor),
                        ),
                        padding:
                        const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                        elevation: 0,
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Next Chapter',
                            style: TextStyle(
                                color: borderColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.arrow_forward_ios,
                              color: borderColor, size: 16),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }

  List<TextSpan> _buildFormattedText(String text) {
    final verseRegex = RegExp(r'(\d+)([^\d]+)');
    final matches = verseRegex.allMatches(text);
    List<TextSpan> spans = [];

    for (final match in matches) {
      final number = match.group(1)!;
      final verse = match.group(2)!;
      spans.add(TextSpan(
        text: '$number ',
        style: const TextStyle(fontWeight: FontWeight.bold),
      ));
      spans.add(TextSpan(text: verse));
    }

    return spans;
  }

  @override
  BibleReadingViewModel viewModelBuilder(BuildContext context) =>
      BibleReadingViewModel(version, book, chapter);
}
