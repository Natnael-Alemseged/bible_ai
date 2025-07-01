import 'package:bible_ai/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'verse_selection_viewmodel.dart';

class VerseSelectionView extends StackedView<VersesSelectionViewModel> {
  const VerseSelectionView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    VersesSelectionViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Verses - ${viewModel.bookName} ${viewModel.chapterNumber}'),
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemCount: viewModel.verses.length,
            itemBuilder: (context, index) {
              final verse = viewModel.verses[index];
              return ElevatedButton(
                onPressed: () => viewModel.selectVerse(verse),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('${index + 1}'),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  VersesSelectionViewModel viewModelBuilder(BuildContext context) =>
      VersesSelectionViewModel();
}
