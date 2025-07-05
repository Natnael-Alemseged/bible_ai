import 'package:bible_ai/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';

class AppPreferencesViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  onNotifications() {
    navigationService.navigateToNotificationsView();
  }

  onBibleVersion() {
    navigationService.navigateToBibleVersionProfileView();
  }
}
