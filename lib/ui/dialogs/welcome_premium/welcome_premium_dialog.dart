import 'package:bible_ai/core/constants/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../core/widgets/app_button.dart';
import '../../../gen/assets.gen.dart';
import 'welcome_premium_dialog_model.dart';

class WelcomePremiumDialog extends StackedView<WelcomePremiumDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const WelcomePremiumDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      WelcomePremiumDialogModel viewModel,
      Widget? child,
      ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      backgroundColor: Colors.white,
      insetPadding: const EdgeInsets.all(24),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 🎈 Animated GIF Balloon
            Image.asset(
              Assets.ballon.path,
              width: 120,
              height: 120,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 24),

            // Heading
            const Text(
              'Welcome to',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              'Bible Ai Premium!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),

            // Description
            const Text(
              'Congratulations, ATHNI! You now have full access to advanced tracking, exclusive content, and 24/7 support. Let’s unlock your potential!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                height: 1.5,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 28),

            // 🟡 Continue Button (custom)
            AppButton(
              text: 'Continue',
              onPressed: () => completer(DialogResponse(confirmed: true)),
            ),
          ],
        ),
      ),
    );
  }

  @override
  WelcomePremiumDialogModel viewModelBuilder(BuildContext context) =>
      WelcomePremiumDialogModel();
}
