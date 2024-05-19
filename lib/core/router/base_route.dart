import 'package:flutter/material.dart';

class BaseRoute extends PageRouteBuilder<dynamic> {
  BaseRoute({required this.page})
      : super(
            pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) =>
                Stack(
                  children: [page],
                ),
            transitionsBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation, Widget widget) {
              const double begin = 0.0;
              const double end = 1.0;

              Tween<double> tween = Tween(begin: begin, end: end);
              CurvedAnimation curvedAnimation = CurvedAnimation(parent: animation, curve: Curves.linearToEaseOut);

              return ScaleTransition(scale: tween.animate(curvedAnimation), child: widget);
            });

  Widget page;
}
