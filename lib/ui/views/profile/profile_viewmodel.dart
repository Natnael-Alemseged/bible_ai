import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:bible_ai/app/app.locator.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void onAccountSettings() {
    // Navigate to Account Settings screen
    // _navigationService.navigateToAccountSettingsView();
  }

  void onAppPreferences() {
    // Navigate to App Preferences screen
    // _navigationService.navigateToAppPreferencesView();
  }

  void onSubscriptionPayments() {
    // Navigate to Subscription & Payments screen
    // _navigationService.navigateToSubscriptionPaymentsView();
  }

  void onHelpSupport() {
    // Navigate to Help & Support screen
    // _navigationService.navigateToHelpSupportView();
  }

  void onAboutApp() {
    // Navigate to About the App screen
    // _navigationService.navigateToAboutAppView();
  }
}
