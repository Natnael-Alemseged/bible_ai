import 'package:bible_ai/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class EnableNotificationViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void toHome() {
    _navigationService.navigateToMainScreenView();
  }
}
