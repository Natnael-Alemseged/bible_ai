import 'package:stacked/stacked.dart';

class BibleReadingViewModel extends BaseViewModel {
  final String version;
  final String book;
  final int chapter;
  bool _isPlaying = false;

  BibleReadingViewModel(this.version, this.book, this.chapter);

  bool get isPlaying => _isPlaying;
  String get chapterText =>
      '1 In the beginning God created the heaven and the earth.\n2 Now the earth was formless and empty, darkness was over the surface of the deep, and the Spirit of God was hovering over the waters.\n3 And God said, "Let there be light," and there was light.\n4 God saw that the light was good, and he separated the light from the darkness.\n5 God called the light "day," and the darkness he called "night." And there was evening, and there was morning—the first day.\n...'; // Placeholder text

  void toggleBookmark() {
    // Implement bookmark logic
    notifyListeners();
  }

  void togglePlayPause() {
    _isPlaying = !_isPlaying;
    notifyListeners();
    // Implement audio play/pause logic
  }

  void showFilter() {
    // Implement filter logic
    // _navigationService.navigateToFilterView();
  }
}
