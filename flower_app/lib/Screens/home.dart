
import 'package:flower_app/Componant/flower.dart';
import 'package:flower_app/Componant/header_appBar.dart';
import 'package:flower_app/Screens/secondScreen.dart';
import 'package:flower_app/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: KPrimary,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){
          },
        ),
      ),
      body: ListView(
         children: [ Column(
          children: [
            Header(),
            Container(
              margin:EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  // ignore: deprecated_member_use
                  FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    color: KPrimary,
                    onPressed: (){
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondScreen()),
                        );
                      });
                    },
                    child: Text(
                      "More",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  flowerList("SAMANTHA", "Russia", "assets/images/image_1.png", 400),
                  flowerList("ANGELA", "Egypt", "assets/images/image_2.png", 400),
                  flowerList("WRS", "Italy", "assets/images/image_3.png", 400),
                  flowerList("BTF", "Spain", "assets/images/image_1.png", 400),
                  flowerList("SAMANTHA", "USA", "assets/images/image_2.png", 400),
                  flowerList("SAMANTHA", "Egypt", "assets/images/image_3.png", 400),
                ],
              )
            ),
            Container(
              margin:EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Featured Plant",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  // ignore: deprecated_member_use
                  IconButton(
                    onPressed: (){
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondScreen()),
                        );
                      });
                    },
                    icon: Icon(Icons.sort),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: size.width *.7,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/bottom_img_1.png")
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  Container(
                    width: size.width *.5,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/bottom_img_2.png")
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
       ]
      ),
    );
  }
  Container flowerList(String txtTitle,String txtSubTitle, String img ,int price){
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(7.0),
      width: size.width *.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          Image.asset("$img"),
          Container(
            padding: EdgeInsets.only(
                left: 5.0,
                top: 3.0,
                right: 5.0
            ),
            color: Colors.white,
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "$txtTitle\n",
                          style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold)
                      ),
                      TextSpan(
                          text: "$txtSubTitle",
                          style: TextStyle(color: KPrimary,fontSize: 14,fontWeight: FontWeight.w600)
                      )
                    ],
                  ),
                ),
                Text("$price",
                  style: TextStyle(color: KPrimary,fontSize: 14,fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
