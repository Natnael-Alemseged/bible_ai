import 'package:bible_ai/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';

class BookChaptersViewModel extends BaseViewModel {
  final String version;
  final String book;
  final int totalChapters;
  final VoidCallback onPreviousBook;
  final VoidCallback onNextBook;
  final void Function(int chapter) onChapterTap;

  BookChaptersViewModel({
    required this.version,
    required this.book,
    required this.totalChapters,
    required this.onPreviousBook,
    required this.onNextBook,
    required this.onChapterTap,
  });

  void handlePreviousBook() {
    onPreviousBook();
  }

  void handleNextBook() {
    onNextBook();
  }

  void handleChapterTap(int chapter) {
    onChapterTap(chapter);
  }
}
