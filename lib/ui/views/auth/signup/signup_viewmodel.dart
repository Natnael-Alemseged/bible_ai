import 'package:bible_ai/app/app.locator.dart';
import 'package:bible_ai/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignupViewModel extends BaseViewModel {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final _navigationService = locator<NavigationService>();

  bool isTermsAccepted = false;
  bool isBusy = false;

  SignupViewModel() {
    passwordController.addListener(_onPasswordChanged);
  }

  void _onPasswordChanged() {
    notifyListeners(); // 🔥 Trigger UI rebuild when password changes
  }

  void toggleTermsAcceptance(bool value) {
    isTermsAccepted = value;
    notifyListeners();
  }

  void register() {
    // if (!isTermsAccepted) {
    //   // TODO: Show error (terms not accepted)
    //   return;
    // }

    isBusy = true;
    notifyListeners();

    Future.delayed(const Duration(seconds: 2), () {
      isBusy = false;
      notifyListeners();
      // TODO: Implement registration logic
      _navigationService.navigateToOtpView();
    });
  }

  void toLoginScreen() {
    _navigationService.navigateToLoginView();
  }

  void openTermsAndDataPolicy() {
    // TODO: Open terms and privacy page
  }

  @override
  void dispose() {
    passwordController.removeListener(_onPasswordChanged);
    // nameController.dispose();
    // emailController.dispose();
    // passwordController.dispose();
    // confirmPasswordController.dispose();
    super.dispose();
  }
}
