import 'package:bible_ai/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:bible_ai/app/app.locator.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  String _email = '';
  String _password = '';

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  login() {}

  toSignupScreen() {
    _navigationService.navigateToSignupView();
  }

  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  void setPassword(String password) {
    _password = password;
    notifyListeners();
  }

  void onLogin() {
    // Add login logic here (e.g., API call)
    _navigationService.replaceWithHomeView(); // Replace with actual navigation
  }

  void onForgotPassword() {
    // Navigate to forgot password screen
    // _navigationService.navigateToForgotPasswordView();
  }

  void onGoogleLogin() {
    // Add Google login logic
    // _navigationService.replaceWithHomeView();
  }

  void onAppleLogin() {
    // Add Apple login logic
    // _navigationService.replaceWithHomeView();
  }
}
