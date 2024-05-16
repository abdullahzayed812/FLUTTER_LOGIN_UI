import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/styles/app_images.dart';

class NoInternetConnectionScreen extends StatelessWidget {
  const NoInternetConnectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppImages.noInternetConnection,
            ),
          ),
        ),
      ),
    );
  }
}
