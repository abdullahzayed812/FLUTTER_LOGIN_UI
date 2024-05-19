import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/styles/app_images.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.notFound), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
