import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';

class AccountSettingsViewModel extends BaseViewModel {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final navigationService = locator<NavigationService>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    oldPasswordController.dispose();
    newPasswordController.dispose();
    super.dispose();
  }

  void updateProfile() {
    // Simulate updating profile (replace with actual API call or logic)
    final name = nameController.text.trim();
    final email = emailController.text.trim();
    final oldPassword = oldPasswordController.text.trim();
    final newPassword = newPasswordController.text.trim();

    if (name.isEmpty ||
        email.isEmpty ||
        oldPassword.isEmpty ||
        newPassword.isEmpty) {
      // Show error (you can use a dialog or snackbar)
      print('Please fill all fields');
      return;
    }

    // Add your update logic here (e.g., API call)
    print(
        'Updating profile: Name: $name, Email: $email, Old Password: $oldPassword, New Password: $newPassword');

    // Simulate success
    notifyListeners();
  }

  void navigateBack() {
    navigationService.back();
  }
}
