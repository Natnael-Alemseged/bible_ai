import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_style.dart';
import '../constants/ui_helpers.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onTap, // Nullable onTap
    this.btnColor = orangeButtonColor,
    this.textColor = whiteColor,
    this.height = 50,
    this.width,
    this.stroke = false,
    this.round = true,
    this.stkWidth = 2,
    this.textStyle,
    this.alignment,
    this.disabled = false,
    required this.loading,
    this.iconOnly = false,
    this.isPlay = true, // For play/pause toggle
    this.isShuffleActive = false, // For shuffle toggle,
    this.icon, // External icon passed from parent
  });

  final bool stroke;
  final String text;
  final VoidCallback? onTap; // Nullable onTap
  final Color btnColor;
  final Color textColor;
  final double height;
  final double? width;
  final bool round;
  final double stkWidth;
  final TextStyle? textStyle;
  final Widget? icon; // External icon passed from parent
  final MainAxisAlignment? alignment;
  final bool disabled;
  final bool loading;
  final bool iconOnly;
  final bool isPlay; // Determines if the button is in play or pause state
  final bool isShuffleActive; // Determines if shuffle is active

  @override
  Widget build(BuildContext context) {
    final buttonContent = Row(
      mainAxisAlignment: alignment ?? MainAxisAlignment.center,
      children: [
        if (loading) ...[
          const SizedBox(
            width: 16,
            height: 16,
            child: CircularProgressIndicator(color: whiteColor),
          ),
          horizontalSpaceSmall,
        ],
        if (icon != null) // Only include icon if provided
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconTheme(
              data: const IconThemeData(color: whiteColor), // Set icon color
              child: icon!, // Safe use of the provided icon
            ),
          ),
        Text(
          text,
          style: textStyle ??
              AppTextStyle.withColor(
                color: disabled || onTap == null
                    ? veryLightGrey
                    : stroke
                        ? btnColor
                        : textColor,
                style: AppTextStyle.h4NormalDisabled,
              ),
        ),
      ],
    );

    if (disabled || onTap == null) {
      return SizedBox(
        height: height,
        width: width ?? MediaQuery.of(context).size.width * .5,
        child: Container(
          decoration: BoxDecoration(
            color: stroke ? whiteColor : btnColor.withOpacity(0.5),
            border: stroke
                ? Border.all(color: orangeButtonColor, width: stkWidth)
                : null,
            borderRadius: round
                ? BorderRadius.circular(height / 2)
                : const BorderRadius.all(Radius.circular(middleSize)),
          ),
          alignment: Alignment.center,
          child: buttonContent,
        ),
      );
    }

    return SizedBox(
      height: height,
      width: width ?? MediaQuery.of(context).size.width * .5,
      child: ElevatedButton(
        onPressed: loading || onTap == null
            ? null
            : () {
                FocusScope.of(context).unfocus();
                onTap?.call(); // Safely call onTap if not null
              },
        style: ElevatedButton.styleFrom(
          backgroundColor: stroke ? whiteColor : btnColor,
          side: stroke
              ? BorderSide(
                  color: btnColor,
                  width: stkWidth,
                  strokeAlign: BorderSide.strokeAlignInside,
                )
              : BorderSide.none,
          shape: round
              ? const StadiumBorder()
              : const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(middleSize)),
                ),
        ),
        child: buttonContent,
      ),
    );
  }
}
