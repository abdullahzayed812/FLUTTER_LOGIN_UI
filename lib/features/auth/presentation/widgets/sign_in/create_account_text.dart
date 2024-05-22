import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/constants/app_dimensions.dart';
import 'package:flutter_store_app/core/extensions/context_extensions.dart';
import 'package:flutter_store_app/core/languages/languages_keys.dart';
import 'package:flutter_store_app/core/shared/widgets/app_text.dart';
import 'package:flutter_store_app/core/styles/fonts/app_fonts.dart';

class CreateAccountText extends StatelessWidget {
  const CreateAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: AppText(
        text: context.translate(LanguagesKeys.createAccount),
        style: context.textStyle.copyWith(
          fontSize: AppDimensions.mediumTextSize,
          fontWeight: FontWeightHelper.bold,
          color: context.color.bluePinkLight,
        ),
      ),
    );
  }
}
