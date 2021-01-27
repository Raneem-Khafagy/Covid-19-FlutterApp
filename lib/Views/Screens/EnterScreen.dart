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
          Positioned(
            width: width,
            height: height * .5,
            top: height * 0.2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/homeScreen.png"),
                ),
              ),
            ),
          ),
          Positioned(
            width: width * .3,
            height: height * .08,
            top: height * 0.73,
            left: width * .35,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/HomeScreen');
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: secColor,
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(20)),
                ),
                child: Center(
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
          ),
        ],
      ),
    );
  }
}
