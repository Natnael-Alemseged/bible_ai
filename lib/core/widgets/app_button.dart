import 'package:bible_ai/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isBusy;
  final Color color;
  final TextStyle? textStyle;
  final double height;
  final double borderRadius;
  final double? width;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isBusy = false,
    this.color = primaryColor, // yellow like your screenshot
    this.textStyle,
    this.height = 56,
    this.borderRadius = 18,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: isBusy ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          disabledBackgroundColor: color.withOpacity(0.6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          elevation: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isBusy)
              Container(
                margin: const EdgeInsets.only(right: 12),
                width: 18,
                height: 18,
                child: const CircularProgressIndicator(
                  color: Colors.black,
                  strokeWidth: 2,
                ),
              ),
            Text(
              text,
              style: textStyle ??
                  const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
