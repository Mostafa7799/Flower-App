import 'package:flower_app/colors.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'secondScreen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    int current = 0;
    List<Widget> Screens = [Home(), BottomNavBar(),SecondScreen()];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: "Flower"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.perm_identity),label: "Profile"),
        ],
        selectedIconTheme:
        IconThemeData(color: KPrimary,size: 20.0),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        unselectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.shifting,
        currentIndex: current,
        onTap: (index) {
          setState(() {
            current = index;
          });
        },
      ),
      body: Screens[current],
    );
  }
}
