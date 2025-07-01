import 'package:bible_ai/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'bible_reading_viewmodel.dart';

class BibleReadingView extends StackedView<BibleReadingViewModel> {
  final String version;
  final String book;
  final int chapter;
  const BibleReadingView(
      {Key? key,
      required this.version,
      required this.book,
      required this.chapter})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BibleReadingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back, color: blackColor),
                      onPressed: () => Navigator.pop(context)),
                  Text('$book Chapter $chapter',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: blackColor)),
                  Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.bookmark_border, color: blackColor),
                          onPressed: viewModel.toggleBookmark),
                      IconButton(
                          icon: Icon(
                              viewModel.isPlaying
                                  ? Icons.pause
                                  : Icons.play_arrow,
                              color: blackColor),
                          onPressed: viewModel.togglePlayPause),
                      IconButton(
                          icon: Icon(Icons.filter_list, color: blackColor),
                          onPressed: viewModel.showFilter),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  viewModel.chapterText,
                  style: TextStyle(fontSize: 16, color: blackColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  BibleReadingViewModel viewModelBuilder(BuildContext context) =>
      BibleReadingViewModel(version, book, chapter);
}
