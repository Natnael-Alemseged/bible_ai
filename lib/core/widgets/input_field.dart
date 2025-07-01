import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../constants/app_colors.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    this.height = 50,
    this.width,
    this.hint = "hint",
    this.suffixTxt,
    required this.controller,
    this.disabled = false,
    this.onchange,
    this.inputType,
    this.stroke = true,
    this.prefixIcon,
    this.suffixIcon,
    this.hideText = false,
    this.onTap,
    this.darkText = false,
    this.validator,
    this.readOnly = false,
    this.error = false,
    this.onEditingComplete,
    this.focusNode,
    this.autoValiation = false,
    this.autofocus = false,
    this.inputFormatter,
    this.charLength = 50,
    this.extendable = false,
    this.maxLine,
    this.phoneField = false,
    this.onCountryChanged,
    this.countryCode,
    this.centerText = false,
    this.style,
    this.borderOnlyDown = false,
    this.minLines = 1,
    this.broadBorderRadius = true,
    this.borderColor,
    this.hasBorderRadius = true,
    this.hintColor = greyColor,
    this.textColor = whiteColor,
  });

  final double? height;
  final double? width;
  final String hint;
  final String? suffixTxt;
  final TextEditingController controller;
  final bool disabled;
  final Function(dynamic)? onchange;
  final TextInputType? inputType;
  final bool stroke;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool hideText;
  final VoidCallback? onTap;
  final bool darkText;
  final dynamic Function(dynamic)? validator;
  final bool readOnly;
  final bool error;
  final VoidCallback? onEditingComplete;
  final FocusNode? focusNode;
  final bool autoValiation;
  final bool autofocus;
  final List<TextInputFormatter>? inputFormatter;
  final int charLength;
  final bool extendable;
  final int? maxLine;
  final bool phoneField;
  final Function(dynamic)? onCountryChanged;
  final String? countryCode;
  final bool centerText;
  final TextStyle? style;
  final bool borderOnlyDown;
  final int minLines;
  final bool broadBorderRadius;
  final Color? borderColor;
  final bool hasBorderRadius;
  final Color hintColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    if (phoneField) {
      return intelPhoneField();
    } else if (extendable) {
      return expandableField();
    } else if (broadBorderRadius) {
      return broadBorderRadiusInputField();
    }
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: height,
      child: TextFormField(
        textAlign: centerText ? TextAlign.center : TextAlign.left,
        maxLength: charLength,
        controller: controller,
        readOnly: readOnly,
        onTap: onTap,
        validator: (value) => validator!(value),
        keyboardType: inputType ?? TextInputType.text,
        onChanged: onchange,
        onEditingComplete: onEditingComplete,
        focusNode: focusNode,
        autofocus: autofocus,
        textAlignVertical: TextAlignVertical.bottom,
        obscureText: hideText,
        inputFormatters: inputFormatter ?? [],
        style:
            style ?? TextStyle(color: textColor, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          counterText: '',
          enabled: !disabled,
          focusColor: orangeButtonColor,
          fillColor: orangeButtonColor,
          border: stroke
              ? borderOnlyDown
                  ? UnderlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.all(
                        hasBorderRadius
                            ? const Radius.circular(30)
                            : Radius.zero,
                      ),
                    )
                  : OutlineInputBorder(
                      gapPadding: 100,
                      borderSide: BorderSide(
                        width: 1,
                        color: borderColor ?? whiteColor,
                      ),
                      borderRadius: BorderRadius.all(
                        hasBorderRadius
                            ? const Radius.circular(30)
                            : Radius.zero,
                      ),
                    )
              : InputBorder.none,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hint,
          hintStyle:
              style ?? TextStyle(color: hintColor, fontWeight: FontWeight.bold),
          suffixText: suffixTxt ?? '',
          enabledBorder: stroke
              ? borderOnlyDown
                  ? const UnderlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                    )
                  : OutlineInputBorder(
                      borderSide: BorderSide(
                        width: error ? 1.5 : .8,
                        color: error ? dangerColor : borderColor ?? whiteColor,
                      ),
                      borderRadius: BorderRadius.all(
                        hasBorderRadius
                            ? const Radius.circular(10)
                            : Radius.zero,
                      ),
                    )
              : InputBorder.none,
        ),
      ),
    );
  }

  Widget expandableField() {
    return TextFormField(
      maxLines: maxLine ?? (hideText ? 1 : null),
      minLines: hideText ? 1 : minLines,
      maxLength: charLength,
      focusNode: focusNode,
      onEditingComplete: onEditingComplete,
      controller: controller,
      onTap: onTap,
      readOnly: readOnly,
      validator: (value) => validator!(value),
      keyboardType: inputType ?? TextInputType.text,
      onChanged: onchange,
      autofocus: false,
      textAlignVertical: TextAlignVertical.center,
      inputFormatters: inputFormatter ?? [],
      obscureText: hideText,
      style: style ?? TextStyle(color: textColor, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        counterText: '',
        enabled: !disabled,
        isDense: true,
        border: stroke
            ? OutlineInputBorder(
                borderSide: BorderSide(
                  width: 5,
                  color: error ? Colors.red : borderColor ?? whiteColor,
                ),
                borderRadius: BorderRadius.all(
                  hasBorderRadius ? const Radius.circular(10) : Radius.zero,
                ),
              )
            : InputBorder.none,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hint,
        hintStyle:
            style ?? TextStyle(color: hintColor, fontWeight: FontWeight.bold),
        suffixText: suffixTxt ?? '',
        enabledBorder: stroke
            ? OutlineInputBorder(
                borderSide: BorderSide(
                  width: error ? 1 : .5,
                  color: error ? Colors.red : borderColor ?? whiteColor,
                ),
                borderRadius: BorderRadius.all(
                  hasBorderRadius ? const Radius.circular(10) : Radius.zero,
                ),
              )
            : InputBorder.none,
      ),
    );
  }

  Widget intelPhoneField() {
    return IntlPhoneField(
      style: style ?? TextStyle(color: textColor),
      controller: controller,
      decoration: InputDecoration(
        counterText: '',
        isDense: true,
        focusColor: orangeButtonColor,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 5,
            color: error ? dangerColor : borderColor ?? whiteColor,
          ),
          borderRadius: BorderRadius.all(
            hasBorderRadius ? const Radius.circular(30) : Radius.zero,
          ),
        ),
        hintText: hint,
        hintStyle:
            style ?? TextStyle(color: hintColor, fontWeight: FontWeight.bold),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: error ? 1 : .5,
            color: error ? dangerColor : whiteColor,
          ),
          borderRadius: BorderRadius.all(
            hasBorderRadius ? const Radius.circular(30) : Radius.zero,
          ),
        ),
        errorStyle: const TextStyle(color: Colors.red, fontSize: 0.0),
      ),
      initialCountryCode: countryCode ?? 'Us',
      onChanged: onchange,
      onCountryChanged: onCountryChanged,
      showDropdownIcon: true,
      dropdownTextStyle: TextStyle(color: borderColor ?? whiteColor),
      dropdownIcon: Icon(
        Icons.arrow_drop_down,
        color: borderColor ?? whiteColor,
      ),
      dropdownIconPosition: IconPosition.trailing,
    );
  }

  Widget broadBorderRadiusInputField() {
    return TextFormField(
      maxLines: maxLine ?? (hideText ? 1 : 2),
      minLines: hideText ? 1 : minLines,
      maxLength: charLength,
      focusNode: focusNode,
      onEditingComplete: onEditingComplete,
      controller: controller,
      onTap: onTap,
      readOnly: readOnly,
      validator: (value) => validator!(value),
      keyboardType: inputType ?? TextInputType.text,
      onChanged: onchange,
      autofocus: false,
      textAlignVertical: TextAlignVertical.center,
      inputFormatters: inputFormatter ?? [],
      obscureText: hideText,
      style: style ?? TextStyle(color: textColor, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        counterText: '',
        enabled: !disabled,
        border: stroke
            ? OutlineInputBorder(
                borderRadius: hasBorderRadius
                    ? BorderRadius.circular(30)
                    : BorderRadius.zero,
                borderSide: BorderSide(color: borderColor ?? whiteColor),
              )
            : InputBorder.none,
        focusedBorder: stroke
            ? OutlineInputBorder(
                borderRadius: hasBorderRadius
                    ? BorderRadius.circular(30)
                    : BorderRadius.zero,
                borderSide: BorderSide(color: borderColor ?? Colors.white),
              )
            : InputBorder.none,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hint,
        hintStyle:
            style ?? TextStyle(color: hintColor, fontWeight: FontWeight.bold),
        suffixText: suffixTxt ?? '',
        enabledBorder: stroke
            ? OutlineInputBorder(
                borderSide: BorderSide(
                  width: error ? 1 : 0.5,
                  color: error ? Colors.red : borderColor ?? Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  hasBorderRadius ? const Radius.circular(30) : Radius.zero,
                ),
              )
            : InputBorder.none,
      ),
    );
  }
}
