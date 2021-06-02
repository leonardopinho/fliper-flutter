import 'package:flutter/material.dart';

class SlideLeftRight extends PageRouteBuilder {
  final Widget page;

  SlideLeftRight({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return page;
          },
          transitionDuration: Duration(milliseconds: 1000),
          transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
            return SlideTransition(
              child: child,
              position: Tween<Offset>(
                begin: Offset(-1.0, 0),
                end: Offset.zero,
              ).animate(
                CurvedAnimation(parent: animation, curve: Curves.easeInOutQuint),
              ),
            );
          },
        );
}
