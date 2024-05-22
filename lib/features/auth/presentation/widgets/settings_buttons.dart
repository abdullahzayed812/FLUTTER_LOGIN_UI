import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_app/core/constants/app_dimensions.dart';
import 'package:flutter_store_app/core/extensions/context_extensions.dart';
import 'package:flutter_store_app/core/languages/languages_keys.dart';
import 'package:flutter_store_app/core/shared/animations/fade_animations.dart';
import 'package:flutter_store_app/core/shared/widgets/app_text.dart';
import 'package:flutter_store_app/core/shared/widgets/gradient_button.dart';
import 'package:flutter_store_app/core/styles/fonts/app_fonts.dart';

class SettingsButtons extends StatelessWidget {
  const SettingsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FadeInLeftAnimation(
          child: GradientButton(
            child: const Icon(Icons.light_mode_rounded, color: Colors.white),
            onPressed: () {},
          ),
        ),
        FadeInRightAnimation(
          child: GradientButton(
            width: AppDimensions.smallButtonWidth.w,
            child: AppText(
              text: context.translate(
                LanguagesKeys.language,
              ),
              style:
                  context.textStyle.copyWith(fontSize: AppDimensions.mediumTextSize, fontWeight: FontWeightHelper.bold),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
