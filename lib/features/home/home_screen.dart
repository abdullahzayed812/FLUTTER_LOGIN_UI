import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/extensions/context_extensions.dart';
import 'package:flutter_store_app/core/router/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text("Navigate"),
        onPressed: () {
          context.pushNamed(AppRouter.profileScreen);
        },
      )),
    );
  }
}
