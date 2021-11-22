import 'package:flower_app/colors.dart';
import 'package:flutter/material.dart';

class Flower extends StatefulWidget {
  @override
  _FlowerState createState() => _FlowerState();
}

class _FlowerState extends State<Flower> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(7.0),
      width: size.width *.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          Image.asset("assets/images/image_1.png"),
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
                          text: "SAMANTHA\n",
                          style: TextStyle(color: Colors.black,fontSize: 14)
                      ),
                      TextSpan(
                          text: "Russia",
                          style: TextStyle(color: KPrimary,fontSize: 14)
                      )
                    ],
                  ),
                ),
                Text("\$440",
                style: TextStyle(color: KPrimary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
