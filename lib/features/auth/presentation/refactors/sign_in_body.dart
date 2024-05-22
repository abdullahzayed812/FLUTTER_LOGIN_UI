import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_app/core/constants/app_dimensions.dart';
import 'package:flutter_store_app/core/extensions/context_extensions.dart';
import 'package:flutter_store_app/core/languages/languages_keys.dart';
import 'package:flutter_store_app/features/auth/presentation/widgets/into_text.dart';
import 'package:flutter_store_app/features/auth/presentation/widgets/settings_buttons.dart';
import 'package:flutter_store_app/features/auth/presentation/widgets/sign_in/create_account_text.dart';
import 'package:flutter_store_app/features/auth/presentation/widgets/sign_in/sign_in_button.dart';
import 'package:flutter_store_app/features/auth/presentation/widgets/sign_in/sing_in_form.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimensions.largeSpacing.w, vertical: AppDimensions.largeSpacing.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SettingsButtons(),
              SizedBox(height: AppDimensions.xLargeSpacing + 20.h),
              InfoText(
                  title: context.translate(LanguagesKeys.login), description: context.translate(LanguagesKeys.welcome)),
              SizedBox(height: AppDimensions.xLargeSpacing + 10.h),
              const SignInForm(),
              SizedBox(height: AppDimensions.xLargeSpacing + 10.h),
              const SignInButton(),
              SizedBox(height: AppDimensions.xLargeSpacing + 10.h),
              const CreateAccountText(),
            ],
          ),
        ));
  }
}
