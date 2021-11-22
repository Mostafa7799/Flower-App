import 'package:flower_app/Screens/bottomNavBar.dart';
import 'package:flower_app/Screens/secondScreen.dart';
import 'package:flower_app/colors.dart';
import 'package:flutter/material.dart';

import 'Screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: KPrimary,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: KtextColor),
      ),
      home: BottomNavBar(),
    );
  }
}

