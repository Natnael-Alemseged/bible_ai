import 'package:bible_ai/app/app.locator.dart';
import 'package:bible_ai/core/constants/app_colors.dart';
import 'package:bible_ai/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'onboarding_viewmodel.dart';

class OnboardingView extends StackedView<OnboardingViewModel> {
  const OnboardingView({super.key});

  @override
  Widget builder(BuildContext context,
      OnboardingViewModel viewModel,
      Widget? child,) {
    final current = viewModel.currentPage;
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),

            // 🔥 Characters Selector or Icon/Ripple
            if (current['showCharacters'] == true)
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(viewModel.characters.length, (index) {
                    final isSelected =
                        index == viewModel.selectedCharacterIndex;
                    final isCenter = index == 2; // 👈 The center one visually

                    return GestureDetector(
                      onTap: () => viewModel.selectCharacter(index),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color:
                            isSelected ? primaryColor : Colors.transparent,
                            width: 3,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: isCenter ? 40 : 25, // Center one is larger
                          backgroundColor: whiteColor,
                          backgroundImage:
                          AssetImage(viewModel.characters[index]['image']),
                        ),
                      ),
                    );
                  }),
                ),
              )
            else
            // 🔥 Icon with Ripple or Not
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (child, animation) =>
                    FadeTransition(opacity: animation, child: child),
                child: Column(
                  key: ValueKey(current['title']),
                  children: [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.asset(
                        current['image'],
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),


            SizedBox(height: current['showCharacters'] == true ? 32 : 0),

            // 🔥 Title and Subtitle
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Text(
                    current['title'],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: blackColor,
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: screenWidth * 0.7,
                    child: Text(
                      current['subtitle'],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        color: darkGreyColor,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),
            viewModel.currentIndex == 3
                ? TextButton(
                onPressed: () {},
                child: const Text(
                    "Continue without an Account", style: AppTextStyle.h3Normal))
                    : const SizedBox(),

            // 🔥 Continue Button
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
                  onPressed: viewModel.onContinue,
                  child: Text(
                    current['button_text'],
                    style: const TextStyle(
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
  OnboardingViewModel viewModelBuilder(BuildContext context) =>
      OnboardingViewModel();
}
