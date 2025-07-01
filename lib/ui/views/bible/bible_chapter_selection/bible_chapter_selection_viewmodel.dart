import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:bible_ai/app/app.locator.dart';

class BibleChapterSelectionViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final String version;
  final TabController tabController;

  BibleChapterSelectionViewModel(this.version)
      : tabController = TabController(
            length: 2,
            vsync: Navigator.of(
                locator<NavigationService>().navigatorKey.currentContext!));

  String _searchQuery = '';
  void setSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  final List<Map<String, dynamic>> books = [
    {'name': 'Genesis', 'chapters': 50, 'testament': 'old'},
    {'name': 'Exodus', 'chapters': 40, 'testament': 'old'},
    {'name': 'Leviticus', 'chapters': 27, 'testament': 'old'},
    // Add more books as needed
  ];

  void selectChapter(String book, int chapter) {
    _navigationService.navigateToBibleReadingView(
        version: version, book: book, chapter: chapter);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
