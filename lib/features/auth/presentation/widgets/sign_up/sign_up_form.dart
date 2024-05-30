import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/constants/app_dimensions.dart';
import 'package:flutter_store_app/core/extensions/context_extensions.dart';
import 'package:flutter_store_app/core/languages/languages_keys.dart';
import 'package:flutter_store_app/core/shared/animations/fade_animations.dart';
import 'package:flutter_store_app/core/shared/widgets/app_text_form_field.dart';
import 'package:flutter_store_app/core/utils/regular_expresions.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    bool isHiddenPassword = true;

    return Form(
      child: Column(
        children: [
          FadeInDownAnimation(
            child: AppTextFormField(
              controller: TextEditingController(),
              hintText: context.translate(LanguagesKeys.fullName),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 4) {
                  return context.translate(LanguagesKeys.validName);
                }

                return null;
              },
            ),
          ),
          const SizedBox(height: AppDimensions.largeSpacing),
          FadeInDownAnimation(
            delay: const Duration(microseconds: 400),
            child: AppTextFormField(
              controller: TextEditingController(),
              hintText: context.translate(LanguagesKeys.email),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (!RegularExpressionsPatterns.validateEmail(value!)) {
                  return context.translate(LanguagesKeys.validEmail);
                }

                return null;
              },
            ),
          ),
          const SizedBox(height: AppDimensions.largeSpacing),
          FadeInDownAnimation(
            delay: const Duration(microseconds: 500),
            child: AppTextFormField(
              controller: TextEditingController(),
              hintText: context.translate(LanguagesKeys.password),
              keyboardType: TextInputType.visiblePassword,
              obscureText: isHiddenPassword,
              suffixIcon: IconButton(
                icon: isHiddenPassword
                    ? const Icon(Icons.visibility_off, color: Colors.white)
                    // ignore: dead_code
                    : const Icon(Icons.visibility_sharp, color: Colors.white),
                onPressed: () {
                  setState(() {
                    isHiddenPassword = !isHiddenPassword;
                  });
                },
              ),
              validator: (value) {
                if (!RegularExpressionsPatterns.validatePassword(value!)) {
                  return context.translate(LanguagesKeys.validPassword);
                }

                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
