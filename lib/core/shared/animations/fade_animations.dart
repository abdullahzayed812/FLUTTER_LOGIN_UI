import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class FadeInUpAnimation extends StatelessWidget {
  const FadeInUpAnimation(
      {super.key, required this.child, required this.duration, this.delay = const Duration(microseconds: 300)});

  final Widget child;
  final Duration duration;
  final Duration delay;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: duration,
      delay: delay,
      child: child,
    );
  }
}

class FadeInDownAnimation extends StatelessWidget {
  const FadeInDownAnimation(
      {super.key, required this.child, required this.duration, this.delay = const Duration(microseconds: 300)});

  final Widget child;
  final Duration duration;
  final Duration delay;

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      duration: duration,
      delay: delay,
      child: child,
    );
  }
}

class FadeInLeftAnimation extends StatelessWidget {
  const FadeInLeftAnimation(
      {super.key, required this.child, required this.duration, this.delay = const Duration(microseconds: 300)});

  final Widget child;
  final Duration duration;
  final Duration delay;

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      duration: duration,
      delay: delay,
      child: child,
    );
  }
}

class FadeInRightAnimation extends StatelessWidget {
  const FadeInRightAnimation(
      {super.key, required this.child, required this.duration, this.delay = const Duration(microseconds: 300)});

  final Widget child;
  final Duration duration;
  final Duration delay;

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      duration: duration,
      delay: delay,
      child: child,
    );
  }
}
