import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/constants/app_dimensions.dart';
import 'package:flutter_store_app/core/extensions/context_extensions.dart';
import 'package:flutter_store_app/core/shared/widgets/app_text.dart';
import 'package:flutter_store_app/core/styles/fonts/app_fonts.dart';

class InfoText extends StatelessWidget {
  const InfoText({super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppText(
          text: title,
          style: context.textStyle.copyWith(fontSize: AppDimensions.xLargeTextSize, fontWeight: FontWeightHelper.bold),
        ),
        const SizedBox(height: AppDimensions.smallSpacing),
        AppText(
          text: description,
          style:
              context.textStyle.copyWith(fontSize: AppDimensions.mediumTextSize, fontWeight: FontWeightHelper.medium),
        ),
      ],
    );
  }
}
