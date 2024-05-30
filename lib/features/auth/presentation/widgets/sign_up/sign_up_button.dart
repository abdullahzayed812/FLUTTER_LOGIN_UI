import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/constants/app_dimensions.dart';
import 'package:flutter_store_app/core/extensions/context_extensions.dart';
import 'package:flutter_store_app/core/languages/languages_keys.dart';
import 'package:flutter_store_app/core/shared/animations/fade_animations.dart';
import 'package:flutter_store_app/core/shared/widgets/app_text.dart';
import 'package:flutter_store_app/core/shared/widgets/gradient_button.dart';
import 'package:flutter_store_app/core/styles/fonts/app_fonts.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDownAnimation(
      delay: const Duration(microseconds: 700),
      child: GradientButton(
        width: double.infinity,
        onPressed: () {},
        child: AppText(
          text: context.translate(LanguagesKeys.signUp),
          style: context.textStyle.copyWith(fontSize: AppDimensions.largeTextSize, fontWeight: FontWeightHelper.bold),
        ),
      ),
    );
  }
}
