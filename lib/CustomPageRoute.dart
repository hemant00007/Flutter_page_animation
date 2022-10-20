

import 'package:flutter/cupertino.dart';

class CustomPageRoute extends PageRouteBuilder{
  final Widget childs;
  final AxisDirection direction;
  CustomPageRoute({required this.childs,this.direction= AxisDirection.left}): super(
    transitionDuration: Duration(seconds: 1),
    reverseTransitionDuration: Duration(seconds: 1),
    pageBuilder:(context,animation,secondaryAnimation)=> childs
  );



  @override
  Widget buildTransitions(BuildContext context,Animation<double> animation ,Animation<double> secondaryAnimation, Widget child ){
   return SlideTransition(
     position: Tween<Offset>(
       begin: beginOffset(),
       end: Offset.zero,
     ).animate(animation),
      child: child,
    );
  }

 Offset beginOffset() {
    switch (direction){
      case AxisDirection.up:
        return Offset(0, 1);
      case AxisDirection.down:
        return Offset(0 , -1);
      case AxisDirection.right:
        return Offset(-1, 0);
      case AxisDirection.left:
        return Offset(1, 0);
    }
 }
}