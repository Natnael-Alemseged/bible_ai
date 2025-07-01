import 'package:bible_ai/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class OtpViewModel extends BaseViewModel {
  final otpController = TextEditingController();
  final _navigationService = locator<NavigationService>();

  bool isBusy = false;

  void verifyOtp() {
    setBusy(true);

    Future.delayed(const Duration(seconds: 2), () {
      setBusy(false);

      // TODO: Implement actual OTP verification logic
      // For now, simulate success and navigate to the next screen
      _navigationService.navigateToCongratulationsView();
    });
  }

  void onOtpChanged(String value) {
    notifyListeners(); // If you want to react to OTP input changes
  }

  void resendOtp() {
    // TODO: Implement logic to resend OTP
    print("Resending OTP...");
  }

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }
}
