import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPageRoute<T> extends PageRoute {
  final Widget child;

  CustomPageRoute({@required this.child});
  @override
  Color get barrierColor => Colors.black;

  @override
  String get barrierLabel => null;

  @override
  Widget buildPage(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => Duration(milliseconds: 500);
}
