import 'package:bible_ai/core/constants/app_colors.dart'; // Assuming you have this file
import 'package:bible_ai/core/constants/ui_helpers.dart';
import 'package:bible_ai/core/widgets/input_field.dart';
import 'package:bible_ai/core/widgets/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../core/widgets/app_button.dart';
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
              verticalSpaceLargeLarge,
              const Text(
                'Welcome Back 👋',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: blackColor,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Sign to your account',
                style: TextStyle(
                  fontSize: 16,
                  color: darkGreyColor,
                ),
              ),
              const SizedBox(height: 40),
              InputField(
                controller: viewModel.emailController,
                label: 'Email',
                hintText: 'Your email',
                // readOnly: true,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              InputField(
                controller: viewModel.passwordController,
                label: 'Password',
                hintText: 'type your old password',
                isPassword: true,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: viewModel.onForgotPassword,
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: blackColor),
                  ),
                ),
              ),
              AppButton(
                text: 'Login',
                isBusy: viewModel.isBusy,
                onPressed: viewModel.login,
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  GestureDetector(
                    onTap: viewModel.toSignupScreen,
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                      endIndent: 12,
                    ),
                  ),
                  const Text(
                    'Or with',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SocialLoginButton(
                imagePath: AppImages.google.path,
                buttonText: 'Sign in with Google',
                onPressed: viewModel.onGoogleLogin,
              ),
              const SizedBox(height: 16),
              SocialLoginButton(
                imagePath: AppImages.apple.path,
                buttonText: 'Sign in with Apple',
                onPressed: viewModel.onAppleLogin,
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
