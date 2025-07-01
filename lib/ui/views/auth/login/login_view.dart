import 'package:bible_ai/core/constants/app_colors.dart'; // Assuming you have this file
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../core/constants/app_images.dart';
import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      LoginViewModel viewModel,
      Widget? child,
      ) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Text(
                'Welcome Back 👋',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: blackColor,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Sign to your account',
                style: TextStyle(
                  fontSize: 16,
                  color: darkGreyColor,
                ),
              ),
              const SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Your email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
                onChanged: viewModel.setEmail,
              ),
              const SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Your password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  suffixIcon: Icon(Icons.visibility_off, color: Colors.grey),
                ),
                onChanged: viewModel.setPassword,
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: viewModel.onForgotPassword,
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: primaryColor),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: viewModel.onLogin,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: Text(
                  "Don't have an account? Sign Up",
                  style: TextStyle(color: darkGreyColor),
                ),
              ),
              const SizedBox(height: 16),
              Center(child: Text('Or with', style: TextStyle(color: darkGreyColor))),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  icon: Image.asset('assets/google.png', height: 24),
                  label: Text('Sign in with Google'),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.grey[300]!),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: viewModel.onGoogleLogin,
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  icon: Image.asset(AppImages.apple.path, height: 24),
                  label: const Text('Sign in with Apple'),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.grey[300]!),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: viewModel.onAppleLogin,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
      BuildContext context,
      ) =>
      LoginViewModel();
}