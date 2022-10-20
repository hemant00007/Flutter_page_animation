import 'package:animation_transition/second.dart';
import 'package:flutter/material.dart';

import 'ButtonWidget.dart';
import 'CustomPageRoute.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: ButtonWidget(
          text: "Custom navigation",
          onClicked: () {
            Navigator.of(context).push(CustomPageRoute(childs:SecondPage()));
          }
        ),
      ),
    );
  }
}
