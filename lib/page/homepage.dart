import 'package:animation_transition/page/profilewidget.dart';
import 'package:animation_transition/page/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../provider/themeprovider.dart';
import '../widget/change_theme_button_widget.dart';
import 'NavigationBarWidget.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          iconTheme: Theme.of(context).iconTheme,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu),
          title: Text("hellosfd",
          style: TextStyle(
            color: Theme.of(context).iconTheme.color,
          ),),
          elevation: 0,
          actions: [
            ChangeThemeButtonWidget(),
          ],
        ),
        body: ProfileWidget(),
        extendBody: true,
        bottomNavigationBar: NavigationBarWidget(),
      );

  // @override
  // Widget build(BuildContext context) {
  //   final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
  //       ? 'DarkTheme'
  //       : 'LightTheme';
  //
  //   return Scaffold(
  //     appBar: AppBar(
  //       backgroundColor: Colors.orange,
  //       title: const Text("Theme changer"),
  //       actions: [
  //         ChangeThemeButtonWidget(),
  //       ],
  //     ),
  //     body: Center(
  //       child: Column(
  //         children: [
  //           SizedBox(height: 140,),
  //           Text(
  //             'Hello $text!',
  //             style: const TextStyle(
  //               fontSize: 32,
  //               fontWeight: FontWeight.bold,
  //             ),
  //           ),
  //           SizedBox(height: 50,),
  //
  //           ElevatedButton(onPressed: (){
  //            Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
  //           }, child: Text("Click me"))
  //         ],
  //       ),
  //     ),
  //   );
  // }
}