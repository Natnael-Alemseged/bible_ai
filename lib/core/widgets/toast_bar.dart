import 'package:bible_ai/core/constants/app_colors.dart';
import 'package:delightful_toast/toast/components/toast_card.dart';
import 'package:delightful_toast/toast/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:delightful_toast/delight_toast.dart';

enum ToastType { danger, warning, success }

void toastBar({
  required BuildContext context,
  required String message,
  required ToastType type,
  int seconds = 2,
  bool willAutoDismiss = true, // Default duration of 2 seconds
}) {
  // Define colors and icons for each ToastType
  IconData? icon;
  Color textColor;
  Color? iconColor;

  switch (type) {
    case ToastType.danger:
      icon = Icons.error_outline;
      iconColor = Colors.redAccent;
      textColor = Colors.redAccent;
      break;
    case ToastType.warning:
      icon = Icons.warning_amber_outlined;
      iconColor = Colors.orangeAccent;
      textColor = Colors.orange;
      break;
    case ToastType.success:
      icon = Icons.check_circle_outline;
      iconColor = Colors.greenAccent;
      textColor = Colors.green;
      break;
  }

  DelightToastBar(
    snackbarDuration: Duration(seconds: seconds), // Use the provided seconds
    autoDismiss: willAutoDismiss,
    position: DelightSnackbarPosition.top,
    builder: (context) => ToastCard(
      color: blackColor,
      leading: Icon(icon, color: iconColor, size: 28),
      title: Text(
        message,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14,
          color: textColor,
        ),
      ),
    ),
  ).show(context);
}
