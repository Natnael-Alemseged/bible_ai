import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:bible_ai/app/app.locator.dart';

import 'package:stacked_services/stacked_services.dart';
import 'package:bible_ai/core/constants/app_colors.dart';

import 'welcome_viewmodel.dart';

class WelcomeOnboarding extends StackedView<WelcomeOnboardingViewModel> {
  const WelcomeOnboarding({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    WelcomeOnboardingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    primaryColor.withOpacity(0.3),
                    primaryColor.withOpacity(0.1),
                    Colors.transparent,
                  ],
                  stops: const [0.2, 0.5, 1.0],
                ),
              ),
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.menu_book_outlined,
                    size: 50,
                    color: blackColor,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              "Welcome to Bible AI",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: blackColor,
              ),
            ),
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Find quick bible answers to questions to life questions",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: darkGreyColor,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: viewModel.toAskAnythingOnboardingView,
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  WelcomeOnboardingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      WelcomeOnboardingViewModel();
}
