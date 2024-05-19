import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/router/base_route.dart';
import 'package:flutter_store_app/core/shared/screens/not_found_screen.dart';
import 'package:flutter_store_app/features/home/home_page.dart';
import 'package:flutter_store_app/features/profile/profile_page.dart';

class AppRouter {
  static const String homeScreen = "HomeScreen";
  static const String profileScreen = "ProfileScreen";

  static Route<void> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return BaseRoute(page: HomeScreen());

      case profileScreen:
        return BaseRoute(page: ProfileScreen());

      default:
        return BaseRoute(page: NotFoundScreen());
    }
  }
}
