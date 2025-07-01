import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'signup_viewmodel.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/ui_helpers.dart';
import '../../../../core/widgets/input_field.dart';
import '../../../../core/widgets/social_login_button.dart';
import '../../../../core/widgets/app_button.dart';

class SignupView extends StackedView<SignupViewModel> {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      SignupViewModel viewModel,
      Widget? child,
      ) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpaceLargeLarge,
                      const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: blackColor,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Create account and choose favorite menu',
                        style: TextStyle(
                          fontSize: 16,
                          color: textGreyColor,
                        ),
                      ),
                      const SizedBox(height: 40),

                      // Name Field
                      InputField(
                        controller: viewModel.nameController,
                        label: 'Name',
                        hintText: 'Your name',
                        keyboardType: TextInputType.text,
                      ),
                      const SizedBox(height: 16),

                      // Email Field
                      InputField(
                        controller: viewModel.emailController,
                        label: 'Email',
                        hintText: 'Your email',
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 16),

                      // Password Field
                      InputField(
                        controller: viewModel.passwordController,
                        label: 'Password',
                        hintText: 'Type your password',
                        isPassword: true,
                      ),
                      const SizedBox(height: 8),

                      if (viewModel.passwordController.text.isNotEmpty)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildValidationItem(
                              "Minimum 8 characters",
                              viewModel.passwordController.text.length,
                              target: 8,
                              isLengthValidation: true,
                            ),
                            _buildValidationItem(
                              "At least 1 number (0-9)",
                              viewModel.passwordController.text
                                  .replaceAll(RegExp(r'[^0-9]'), '')
                                  .length,
                            ),
                            _buildValidationItem(
                              "At least 1 letter (a-z)",
                              viewModel.passwordController.text
                                  .replaceAll(RegExp(r'[^a-zA-Z]'), '')
                                  .length,
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),

                      // Register Button
                      AppButton(
                        text: 'Register',
                        isBusy: viewModel.isBusy,
                        onPressed: viewModel.register,
                      ),

                      const SizedBox(height: 24),

                      // Already have an account? Link
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account? ",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          GestureDetector(
                            onTap: viewModel.toLoginScreen,
                            child: const Text(
                              "Sign In",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Terms and Conditions (bottom fixed)
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'By clicking Register, you agree to our ',
                    style: const TextStyle(
                      color: textGreyColor,
                      fontSize: 14,
                      height: 1.5,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '\nTerms, Data Policy',
                        style: const TextStyle(
                          color: blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = viewModel.openTermsAndDataPolicy,
                      ),
                      const TextSpan(
                        text: '.',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 🔥 Password Validation Item Widget
  Widget _buildValidationItem(
      String text,
      int current, {
        int target = 1,
        bool isLengthValidation = false,
      }) {
    Color getColor() {
      if (current == 0) return Colors.grey;
      if (isLengthValidation) {
        if (current >= target) return Colors.green;
        if (current >= target * 0.7) return Colors.orange;
        return Colors.red;
      } else {
        if (current >= target) return Colors.green;
        if (current > 0) return Colors.orange;
        return Colors.red;
      }
    }

    IconData getIcon() {
      if (current == 0) return Icons.circle_outlined;
      if (current >= target) return Icons.check_circle;
      return Icons.error_outline;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Icon(
            getIcon(),
            color: getColor(),
            size: 16,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(
              color: getColor(),
              fontSize: 12,
            ),
          ),
          if (isLengthValidation && current > 0 && current < target)
            Text(
              ' ($current/$target)',
              style: TextStyle(
                color: getColor(),
                fontSize: 12,
              ),
            ),
        ],
      ),
    );
  }

  @override
  SignupViewModel viewModelBuilder(BuildContext context) =>
      SignupViewModel();
}
