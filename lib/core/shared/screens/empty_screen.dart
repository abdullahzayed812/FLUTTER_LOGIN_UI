import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/styles/images/app_images.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.emptyScreen), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
