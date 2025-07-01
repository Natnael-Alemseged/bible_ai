import 'package:bible_ai/core/constants/app_text_style.dart';
import 'package:bible_ai/core/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

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
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpaceMiddle,
            Image.asset(
              Assets.bell.path,
              height: 100,
            ),
            const Text(
              'Stay on Track with Reminders',
              style: AppTextStyle.big30,
              textAlign: TextAlign.center,
            ),
            verticalSpaceMiddle,
            const Text(
              'Let us help you stay accountable. Enable notifications to receive daily check-ins, spiritual and motivational boosts, and important updates tailored just for you.',
              style: AppTextStyle.h2Normal,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            AppButton(
                text: 'Enable Notifications', onPressed: viewModel.toHome),
          ],
        ));
  }

  @override
  EnableNotificationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EnableNotificationViewModel();
}
