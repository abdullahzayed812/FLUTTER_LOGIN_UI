import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_app/core/app/cubit/app_cubit.dart';
import 'package:flutter_store_app/core/app/cubit/app_state.dart';
import 'package:flutter_store_app/core/constants/app_dimensions.dart';
import 'package:flutter_store_app/core/extensions/context_extensions.dart';
import 'package:flutter_store_app/core/languages/app_localizations.dart';
import 'package:flutter_store_app/core/languages/languages_keys.dart';
import 'package:flutter_store_app/core/shared/animations/fade_animations.dart';
import 'package:flutter_store_app/core/shared/widgets/app_text.dart';
import 'package:flutter_store_app/core/shared/widgets/gradient_button.dart';
import 'package:flutter_store_app/core/styles/fonts/app_fonts.dart';

class SettingsButtons extends StatelessWidget {
  const SettingsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FadeInLeftAnimation(
            child: GradientButton(
              child: Icon(state is AppThemeLoaded && state.isDark ? Icons.light_mode_rounded : Icons.dark_mode_rounded,
                  color: Colors.white),
              onPressed: () {
                context.read<AppCubit>().toggleTheme();
              },
            ),
          ),
          FadeInRightAnimation(
            child: GradientButton(
              width: AppDimensions.smallButtonWidth.w,
              child: AppText(
                text: context.translate(
                  LanguagesKeys.language,
                ),
                style: context.textStyle
                    .copyWith(fontSize: AppDimensions.mediumTextSize, fontWeight: FontWeightHelper.bold),
              ),
              onPressed: () {
                if (AppLocalizations.of(context)!.isEnglish) {
                  context.read<AppCubit>().changeLanguageToArabic();
                } else {
                  context.read<AppCubit>().changeLanguageToEnglish();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
