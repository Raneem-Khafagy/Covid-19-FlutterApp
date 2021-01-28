import 'package:flutter/material.dart';

import '../../Constants.dart';

class Covid19MiniCards extends StatelessWidget {
  const Covid19MiniCards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
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
            height: height * .25,
            top: height * .05,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context,
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.keyboard_return),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      Text("covid19", style: lightCovidTextStyle),
                      Text("symtoms", style: covidTextStyle),
                      Text("thfmvbsdbvkjsdf fdskv ", style: subTextStyle),
                    ],
                  ),
                  Image.asset('assets/images/symptoms.png'),
                ],
              ),
            ),
          ),
          Positioned(
            width: width,
            height: height * .7,
            top: height * .3,
            child: Container(
              height: height * .5,
              width: width,
              child: GridView.count(
                  primary: false,
                  padding: EdgeInsets.only(
                    left: width * .03,
                    right: width * .03,
                    bottom: height * .01,
                  ),
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  crossAxisCount: 2,
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: wColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(height * 0.1),
                              bottomRight: Radius.circular(height * 0.1),
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 8),
                                blurRadius: 24,
                                color: shadowColor,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Image(
                            image: AssetImage(
                                "assets/images/symptoms/HighFever.png"),
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
