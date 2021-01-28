import 'package:covid/Models/APIData.dart';
import 'package:covid/widgets/flipCard.dart';
import 'package:covid/widgets/header.dart';
import 'package:flutter/material.dart';

import '../../Constants.dart';

class CardFutureBuilder extends StatelessWidget {
  final String country;

  const CardFutureBuilder({Key key, this.country}) : super(key: key);

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: FutureBuilder(
        future: fetchData(country),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              body: Container(
                height: height,
                width: width,
                child: ListView(
                  children: [
                    MyHeader(
                      image: "assets/images/homeScreen.png",
                      textTop: "Case Update",
                      date: snapshot.data['day'].toString(),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width * .07),
                      child: GridView.count(
                          primary: false,
                          padding: EdgeInsets.only(
                            //top: height * .03,
                            left: width * .03,
                            right: width * .03,
                            //bottom: height * .01,
                          ),
                          crossAxisSpacing: 9,
                          mainAxisSpacing: 9,
                          crossAxisCount: 2,
                          controller:
                              new ScrollController(keepScrollOffset: false),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            FlippingCard(
                              height: height,
                              width: width,
                              front: 'New Cases',
                              back: snapshot.data['newCases'].toString(),
                            ),
                            FlippingCard(
                              height: height,
                              width: width,
                              front: 'Total Cases',
                              back: snapshot.data['activeCases'].toString(),
                            ),
                            FlippingCard(
                              height: height,
                              width: width,
                              front: 'Recovered Cases',
                              back: snapshot.data['recoveredCases'].toString(),
                            ),
                            FlippingCard(
                              height: height,
                              width: width,
                              front: 'Total deathes',
                              back: snapshot.data['deathes'].toString(),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return Center(
                child: CircularProgressIndicator(
              backgroundColor: secColor,
              valueColor: new AlwaysStoppedAnimation<Color>(bgColor),
            ));
          }
        },
      ),
    );
  }
}
