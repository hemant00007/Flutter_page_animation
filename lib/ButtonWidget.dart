import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
class ButtonWidget extends StatelessWidget {
   final String text;
   final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return ElevatedButton(
       style: ElevatedButton.styleFrom(
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(20)
         ),
         padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10)
       ),
       onPressed: onClicked, child: Text(
     text,
     style: TextStyle(
       fontSize: 20
     ),
   ));
  }
}