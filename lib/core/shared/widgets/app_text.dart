import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/constants/app_dimensions.dart';
import 'package:flutter_store_app/core/extensions/context_extensions.dart';
import 'package:flutter_store_app/core/styles/fonts/app_fonts.dart';

class AppText extends StatelessWidget {
  const AppText({super.key, required this.text, this.style, this.textAlign});

  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: style ??
            context.textStyle.copyWith(
              fontSize: AppDimensions.mediumTextSize,
              fontWeight: FontWeightHelper.medium,
              color: context.color.textColor,
            ));
  }
}
