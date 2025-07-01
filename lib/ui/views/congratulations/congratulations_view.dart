import 'package:bible_ai/core/constants/app_colors.dart';
import 'package:bible_ai/core/constants/app_text_style.dart';
import 'package:bible_ai/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../core/constants/ui_helpers.dart';
import '../../../gen/assets.gen.dart';
import 'congratulations_viewmodel.dart';

class CongratulationsView extends StackedView<CongratulationsViewModel> {
  const CongratulationsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CongratulationsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  // height: 30,
                  width: screenWidth(context) / 2,
                  child: Image.asset(
                    Assets.congratulations.path,
                    fit: BoxFit.contain,
                  ),
                ),
                verticalSpaceLarge,
                const Text(
                  'Congratulations!',
                  style: AppTextStyle.big,
                ),
                verticalSpaceMiddle,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Text(
                    'your account is complete, please enjoy the best menu from us.',
                    style: AppTextStyle.h3Normal.copyWith(color: textGreyColor),
                    textAlign: TextAlign.center,


                  ),
                ),
                verticalSpaceLarge,
                // 🔥 Continue Button
                AppButton(
                    text: 'Get Started', onPressed: viewModel.onStartedPressed)
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  CongratulationsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CongratulationsViewModel();
}
