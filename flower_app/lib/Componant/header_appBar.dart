import 'package:flutter/material.dart';

import '../colors.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      height: size.height * .2,
      child: Stack(
        children: [
          Container(
            height: size.height * .2 -27,
            decoration: BoxDecoration(
                color: KPrimary,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(35.0),bottomLeft: Radius.circular(35.0))
            ),
            child: Container(

              padding: EdgeInsets.only(
                bottom: 35.0,
                right: 20.0,
                left: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hi Mostafa",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset("assets/images/logo.png")
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child:  Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.all(10.0),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,5),
                    blurRadius: 30,
                    color: Colors.black87,
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.black45),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

