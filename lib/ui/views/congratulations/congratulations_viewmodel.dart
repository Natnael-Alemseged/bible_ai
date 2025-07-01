import 'package:bible_ai/app/app.locator.dart';
import 'package:bible_ai/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CongratulationsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void onStartedPressed() {
    _navigationService.replaceWithEnableNotificationView();
  }
}
