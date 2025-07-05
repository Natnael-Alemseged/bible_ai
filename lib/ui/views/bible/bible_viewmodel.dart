import 'package:bible_ai/app/app.router.dart';
import 'package:bible_ai/ui/views/bible/bible_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:bible_ai/app/app.locator.dart';
import 'package:flutter/material.dart';

import 'bible_chapter_selection/bible_chapter_selection_view.dart';
import 'bible_version_detail.dart';

class BibleVersionSelectionViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void selectVersion(String version, BuildContext context) {
    // _navigationService.navigateToBibleChapterSelectionView(version: version);

    Navigator.of(context).push(PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) =>
          BibleVersionDetailView(version: version),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    ));
  }

  void initTabController(BookChaptersView bibleChapterSelectionView) {}
}
