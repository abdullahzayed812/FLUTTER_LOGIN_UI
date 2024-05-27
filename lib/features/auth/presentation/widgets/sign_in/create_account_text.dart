import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/constants/app_dimensions.dart';
import 'package:flutter_store_app/core/extensions/context_extensions.dart';
import 'package:flutter_store_app/core/shared/widgets/app_text.dart';
import 'package:flutter_store_app/core/styles/fonts/app_fonts.dart';

class CreateAccountText extends StatelessWidget {
  const CreateAccountText(
      {super.key, required this.onPressed, required this.text});

  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: AppText(
        text: context.translate(text),
        style: context.textStyle.copyWith(
          fontSize: AppDimensions.mediumTextSize,
          fontWeight: FontWeightHelper.bold,
          color: context.color.bluePinkLight,
        ),
      ),
    );
  }
}
