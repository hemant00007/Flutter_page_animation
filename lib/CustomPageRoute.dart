

import 'package:flutter/cupertino.dart';

class CustomPageRoute extends PageRouteBuilder{
  final Widget childs;
  CustomPageRoute({required this.childs}): super(
    transitionDuration: Duration(seconds: 1),
    reverseTransitionDuration: Duration(seconds: 1),
    pageBuilder:(context,animation,secondaryAnimation)=> childs
  );

  @override
  Widget buildTransitions(BuildContext context,Animation<double> animation ,Animation<double> secondaryAnimation, Widget child ){
   return ScaleTransition(
      scale: animation,
      child: child,
    );
  }
}