import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/router/base_route.dart';
import 'package:flutter_store_app/core/shared/screens/empty_screen.dart';
import 'package:flutter_store_app/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:flutter_store_app/features/auth/presentation/screens/sing_in_screen.dart';

class AppRouter {
  static const String signInScreen = "SignInScreen";
  static const String signUpScreen = "SignUpScreen";

  static Route<void> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signInScreen:
        return BaseRoute(page: const SignInScreen());

      case signUpScreen:
        return BaseRoute(page: const SignUpScreen());

      default:
        return BaseRoute(page: const EmptyScreen());
    }
  }
}
