
import 'dart:ui';

import 'package:flower_app/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: EdgeInsets.only(bottom: 30.0),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.west_outlined,
                            size: 30.0,
                          ),
                      ),
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 10.0,
                            color: KPrimary,
                          ),
                        ]
                      ),
                      margin: EdgeInsets.only(
                        bottom: 20.0,
                        top: 20.0
                      ),
                      child: Icon(
                        Icons.wb_twighlight,
                        size: 40.0,
                        color: KPrimary,
                      ),
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 10.0,
                              color: KPrimary,
                            ),
                          ]
                      ),
                      margin: EdgeInsets.only(
                          bottom: 20.0,
                          top: 20.0
                      ),
                      child: Icon(
                        Icons.wb_sunny_outlined,
                        size: 40.0,
                        color: KPrimary,
                      ),
                    ),
                    Container(
                        height: 55,
                        width: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 10.0,
                              color: KPrimary,
                            ),
                          ]
                      ),
                      margin: EdgeInsets.only(
                          bottom: 20.0,
                          top: 20.0
                      ),
                      child: Icon(
                        Icons.wb_incandescent_outlined,
                        size: 40.0,
                        color: KPrimary,
                      ),
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 10.0,
                              color: KPrimary,
                            ),
                          ]
                      ),
                      margin: EdgeInsets.only(
                          bottom: 20.0,
                          top: 20.0
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        size: 40.0,
                        color: KPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height *.75,
                width: size.width *.75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(50.0),
                  ),
                  boxShadow: [
                    BoxShadow(offset: Offset(0, 10),
                    blurRadius: 40,
                      color: Colors.black54,
                    ),
                  ],
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage("assets/images/img.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
           Container(
             padding: EdgeInsets.only(
               left: 50.0,
               right: 50.0,
               top: 30.0,
               bottom: 13.5
             ),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "SHMANTHA\n",
                          style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)
                      ),
                      TextSpan(
                          text: "Egypt",
                          style: TextStyle(color: KPrimary,fontSize: 17)
                      )
                    ],
                  ),
                ),
                Text("\$500",
                  style: TextStyle(color: KPrimary,fontSize: 19,fontWeight: FontWeight.bold),
                ),
              ],
          ),
           ),
          Row(
            children: [
              // ignore: deprecated_member_use
              SizedBox(
                width: size.width /2,
                height: 84.0,
                child: FlatButton(
                  color: KPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50.0),
                    )
                  ),
                    onPressed: (){},
                    child: Text(
                      "Buy Now",
                      style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),
                    ),
                ),
              ),
              Expanded(
                // ignore: deprecated_member_use
                child: FlatButton(
                  color: Colors.white,
                  onPressed: (){},
                  child: Text(
                    "Description",
                    style: TextStyle(color: Colors.black87,fontSize: 20.0,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
