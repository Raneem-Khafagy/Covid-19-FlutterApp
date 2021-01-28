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
          Container(
            width: width,
            height: height,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
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
            width: width,
            height: height * .4,
            top: height * 0.72,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/HomeScreen');
                  },
                  child: Container(
                    width: width * .55,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: secColor,
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(20)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Good to know",
                            textAlign: TextAlign.center,
                            style: //titleTextstyle
                                TextStyle(
                              fontSize: 18,
                              color: wColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(" -COVID-19",
                              textAlign: TextAlign.center,
                              style: titleTextstyle),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  width: width * .93,
                  child: Text(
                    "COVID-19 is an infectious disease \ncaused by a new virus. It affects different people in different ways.",
                    textAlign: TextAlign.center,
                    style: lighterTextStyle,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
