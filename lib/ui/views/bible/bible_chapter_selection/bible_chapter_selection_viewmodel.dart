import 'package:bible_ai/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';

class BibleChapterSelectionViewModel extends BaseViewModel {
  final String version;

  late TabController tabController; // <-- We'll initialize this later

  BibleChapterSelectionViewModel(this.version);

  void init(TickerProvider vsync) {
    tabController = TabController(length: 2, vsync: vsync); // 2 tabs: OT & NT
  }

  // Simulated books data
  List<Map<String, dynamic>> get books => [
        {'name': 'Genesis', 'chapters': 50},
        {'name': 'Exodus', 'chapters': 40},
        {'name': 'Leviticus', 'chapters': 27},
        // Add more books as needed
      ];

  void selectChapter(String bookName, int chapterNumber) {
    setBusy(true);
    Future.delayed(const Duration(seconds: 1), () {
      setBusy(false);
      // _navigationService.navigateToVerseSelectionView(
      //   bookName: bookName,
      //   chapterNumber: chapterNumber,
      // );
    });
  }

  void setSearchQuery(String query) {
    // Implement search logic here
  }

  NavigationService _navigationService = locator<NavigationService>();
}
