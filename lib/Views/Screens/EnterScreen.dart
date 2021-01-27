import 'package:covid/Models/data.dart';
import 'package:flutter/material.dart';

import '../../Constants.dart';

class EnterScreen extends StatelessWidget {
  const EnterScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //fetchData();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Container(
          //   color: Colors.white,
          //   width: width,
          //   height: height,
          // ),
          Positioned(
            width: width,
            height: height * .3,
            top: height * 0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/map.png"),
                ),
              ),
            ),
          ),
          Positioned(
            width: width,
            height: height * .2,
            top: height * 0.9,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/HomeScreen');
              },
              child: Container(
                width: width * 0.3,
                height: height * .07,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: secColor,
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(20)),
                ),
                child: Text(
                  "Let's go",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: wColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            width: width,
            height: height * .6,
            top: height * 0.22,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/homeScreen.png"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
