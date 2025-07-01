import 'package:stacked/stacked.dart';

class VersesSelectionViewModel extends BaseViewModel {
  String bookName = '';
  int chapterNumber = 0;
  List<int> verses = [];

  void selectVerse(int verseNumber) {
    // Handle verse selection logic
    print('Selected verse: $verseNumber');
  }
}
