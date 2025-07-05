import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:bible_ai/core/constants/app_colors.dart';

import 'bible_chapter_selection_viewmodel.dart';

class BookChaptersView extends StackedView<BookChaptersViewModel> {
  final String version;
  final String book;
  final int totalChapters;
  final VoidCallback onPreviousBook;
  final VoidCallback onNextBook;
  final void Function(int chapter) onChapterTap;

  const BookChaptersView({
    super.key,
    required this.version,
    required this.book,
    required this.totalChapters,
    required this.onPreviousBook,
    required this.onNextBook,
    required this.onChapterTap,
  });

  @override
  Widget builder(
    BuildContext context,
    BookChaptersViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Text(
              '${viewModel.version} bible edition',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: viewModel.handlePreviousBook,
                  icon: const Icon(Icons.chevron_left, color: Colors.black),
                ),
                Text(
                  viewModel.book,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                IconButton(
                  onPressed: viewModel.handleNextBook,
                  icon: const Icon(Icons.chevron_right, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GridView.builder(
                  itemCount: viewModel.totalChapters,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 1.0,
                  ),
                  itemBuilder: (context, index) {
                    final chapter = index + 1;
                    return InkWell(
                      onTap: () => viewModel.handleChapterTap(chapter),
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: primaryColor),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          '$chapter',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  BookChaptersViewModel viewModelBuilder(BuildContext context) =>
      BookChaptersViewModel(
        version: version,
        book: book,
        totalChapters: totalChapters,
        onPreviousBook: onPreviousBook,
        onNextBook: onNextBook,
        onChapterTap: onChapterTap,
      );
}
