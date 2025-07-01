import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:bible_ai/core/constants/app_colors.dart';
import 'package:bible_ai/core/constants/ui_helpers.dart';

class CustomDropdown<T> extends StatelessWidget {
  final String label;
  final IconData? prefixIcon;
  final List<T> items;
  final T? value;
  final ValueChanged<T?>? onChanged;
  final double? buttonWidth;
  final double? itemHeight;
  final FormFieldValidator<T>? validator; // Added validator

  const CustomDropdown({
    Key? key,
    required this.label,
    this.prefixIcon,
    required this.items,
    this.value,
    required this.onChanged,
    this.buttonWidth,
    this.itemHeight,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<T>(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: greyColor),
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: dangerColor),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: dangerColor),
        ),
      ),
      isExpanded: true,
      hint: Text(label),
      items: items.map((item) {
        return DropdownMenuItem<T>(
          value: item,
          child: SizedBox(
            width: double.infinity,
            child: Text(
              item.toString(),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: false,
            ),
          ),
        );
      }).toList(),
      value: value,
      onChanged: onChanged,
      validator: validator, // Pass the validator here
    );
  }

  /// Static helper method to create a dropdown with default configurations
  static Widget create<T>({
    required String label,
    required IconData prefixIcon,
    required List<T> items,
    required T? value,
    required ValueChanged<T?> onChanged,
    FormFieldValidator<T>? validator,
    double? buttonWidth,
    double? itemHeight,
  }) {
    return CustomDropdown<T>(
      label: label,
      prefixIcon: prefixIcon,
      items: items,
      value: value,
      onChanged: onChanged,
      validator: validator,
      buttonWidth: buttonWidth ?? 200,
      itemHeight: itemHeight,
    );
  }
}
