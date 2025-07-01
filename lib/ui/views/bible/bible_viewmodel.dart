import 'package:bible_ai/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:bible_ai/app/app.locator.dart';

class BibleVersionSelectionViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void selectVersion(String version) {
    _navigationService.navigateToBibleChapterSelectionView(version: version);
  }
}
