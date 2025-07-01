import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomCircularCheckbox extends StatelessWidget {
  final bool value;
  final VoidCallback onChanged;

  const CustomCircularCheckbox({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChanged,
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color:
                value ? orangeButtonColor : orangeButtonColor, // Border color
            width: 2,
          ),
          color: value ? orangeButtonColor : Colors.transparent, // Fill color
        ),
        child: value
            ? const Icon(
                Icons.check,
                size: 16,
                color: whiteColor, // Checkmark color
              )
            : null,
      ),
    );
  }
}
