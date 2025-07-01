import 'package:bible_ai/app/app.locator.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class WelcomeOnboardingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  toAskAnythingOnboardingView() {
    // _navigationService.navigateToAskAnythingOnboarding();
  }
}
