import 'package:bible_ai/core/constants/app_text_style.dart';
import 'package:bible_ai/core/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/app_button.dart';
import '../../../gen/assets.gen.dart';
import 'enable_notification_viewmodel.dart';

class EnableNotificationView extends StackedView<EnableNotificationViewModel> {
  const EnableNotificationView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    EnableNotificationViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          // 🔥 Consistent padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpaceLargeLarge,

              // 🔔 Illustration
              Image.asset(
                Assets.bell.path,
                height: 135,
                width: 135,
              ),

              verticalSpaceMedium,

              // 🔥 Title
              const Text(
                'Stay on Track with Reminders',
                style: AppTextStyle.big30,
                textAlign: TextAlign.center,
              ),

              verticalSpaceSmall,

              // 🔥 Subtitle
              const Text(
                'Let us help you stay accountable. Enable notifications to receive daily check-ins, spiritual and motivational boosts, and important updates tailored just for you.',
                style: AppTextStyle.h2Normal,
                textAlign: TextAlign.center,
              ),

              verticalSpaceLarge,

              // 🔥 Bullet Section
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Assets.leaf.path,
                    height: 17,
                  ),
                  horizontalSpaceSmall,
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Daily Reminders',
                          style: AppTextStyle.h3Bold,
                        ),
                        verticalSpaceTiny,
                        Text(
                          'Get a gentle nudge each day to log your progress and stay motivated.',
                          style: AppTextStyle.h3Normal,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const Spacer(),

              // 🔥 Enable Notifications Button
              AppButton(
                text: 'Enable Notifications',
                onPressed: viewModel.toHome,
              ),

              verticalSpaceMedium,
            ],
          ),
        ),
      ),
    );
  }

  @override
  EnableNotificationViewModel viewModelBuilder(BuildContext context) =>
      EnableNotificationViewModel();
}
