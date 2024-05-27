import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/shared/animations/fade_animations.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const FadeInDownAnimation(
        child: CircleAvatar(
      radius: 38,
      backgroundImage: NetworkImage(
          "https://images.unsplash.com/photo-1610972221114-c48c6bb5d2eb?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
    ));
  }
}
