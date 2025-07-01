import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:bible_ai/app/app.locator.dart';

import 'package:bible_ai/core/constants/app_colors.dart';

import 'ask_anything_onboarding_view_model.dart';

class AskAnythingOnboarding
    extends StackedView<AskAnythingOnboardingViewModel> {
  const AskAnythingOnboarding({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AskAnythingOnboardingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            const Icon(
              Icons.menu_book_outlined,
              size: 100,
              color: blackColor,
            ),
            const SizedBox(height: 32),
            const Text(
              "Ask anything and get biblical answers",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: blackColor,
              ),
              textAlign: TextAlign.center,
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
                  onPressed: viewModel.navigateToTalkToAIScreen,
                  child: const Text(
                    "Continue",
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
  AskAnythingOnboardingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AskAnythingOnboardingViewModel();
}
