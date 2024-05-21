import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/constants/app_dimensions.dart';
import 'package:flutter_store_app/core/extensions/context_extensions.dart';
import 'package:flutter_store_app/core/styles/fonts/app_fonts.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {super.key,
      required this.controller,
      this.filled = false,
      this.obscureText = false,
      this.readonly = false,
      this.validator,
      this.fillColor,
      this.suffixIcon,
      this.hintText,
      this.keyboardType,
      this.hintStyle,
      this.prefixIcon,
      this.onChanged,
      this.maxLength,
      this.maxLines = 1});

  final TextEditingController controller;
  final bool filled;
  final bool obscureText;
  final bool readonly;
  final String? Function(String?)? validator;
  final Color? fillColor;
  final Icon? suffixIcon;
  final String? hintText;
  final TextInputType? keyboardType;
  final TextStyle? hintStyle;
  final Icon? prefixIcon;
  final String? Function(String?)? onChanged;
  final int? maxLength;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: context.color.textColor,
      validator: validator,
      onChanged: onChanged,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: maxLines,
      readOnly: readonly,
      style: TextStyle(
          fontSize: AppDimensions.mediumTextSize, fontWeight: FontWeightHelper.medium, color: context.color.textColor),
      decoration: InputDecoration(
        filled: filled,
        fillColor: fillColor,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.mediumRadius),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.mediumRadius),
          borderSide: BorderSide(
            color: context.color.textFormBorder!,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.mediumRadius),
          borderSide: BorderSide(color: context.color.textFormBorder!),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.mediumRadius),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.mediumRadius),
          borderSide: const BorderSide(color: Colors.red),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: AppDimensions.largeSpacing, vertical: AppDimensions.mediumSpacing),
        hintStyle: hintStyle ??
            context.textStyle.copyWith(
              color: context.color.textColor,
              fontSize: AppDimensions.smallTextSize,
              fontWeight: FontWeightHelper.regular,
            ),
        errorStyle: context.textStyle.copyWith(
          color: context.color.textColor,
          fontSize: AppDimensions.verySmallTextSize,
          fontWeight: FontWeightHelper.regular,
        ),
      ),
    );
  }
}
