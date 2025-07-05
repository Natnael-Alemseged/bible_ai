import 'package:bible_ai/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:bible_ai/app/app.locator.dart';

import '../../../app/app.dialogs.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _dialogService=locator<DialogService>();

  void onAccountSettings() {
    // Navigate to Account Settings screen
    _navigationService.navigateToAccountSettingsView();
    // AccountSettingsView
  }

  void onAppPreferences() {
    // Navigate to App Preferences screen
    _navigationService.navigateToAppPreferencesView();
  }

  void onSubscriptionPayments() {
    // Navigate to Subscription & Payments screen
    // _navigationService.navigateToSubscriptionAndPaymentsView();
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert, // Make sure this is registered in your app
      title: 'Unlock the Full Bible AI Experience',
      // description: '', // You can leave this empty since we're using custom UI
      // data: {}, // Pass any additional data if needed
    );
  }

  void onHelpSupport() {
    // Navigate to Help & Support screen
    // _navigationService.navigateToHelpAndSupportView();
    _dialogService.showCustomDialog(
      variant: DialogType.welcomePremium, // Make sure this is registered in your app
      title: 'Unlock the Full Bible AI Experience',
      // description: '', // You can leave this empty since we're using custom UI
      // data: {}, // Pass any additional data if needed
    );
  }

  void onAboutApp() {
    // Navigate to About the App screen
    _navigationService.navigateToAboutTheAppView();
  }
}
