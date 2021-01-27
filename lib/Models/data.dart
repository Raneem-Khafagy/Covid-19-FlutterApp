import 'dart:convert' as convert;

import 'package:covid/widgets/flipCard.dart';
import 'package:covid/widgets/header.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import '../Constants.dart';

Future fetchData(String location) async {
  var newCases, activeCases, recoveredCases, deathes, day;

  String url = "https://covid-193.p.rapidapi.com/statistics";

  Map<String, String> headers = {
    'x-rapidapi-key': "f610ae0c08mshb6d623601deca3bp13af0fjsn6df5c3538173",
    'x-rapidapi-host': "covid-193.p.rapidapi.com"
  };
  var response = await http.get(url, headers: headers);
  // print(response.body);

  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    //print(jsonResponse['response']);
    var countryDataList = jsonResponse['response'];
    for (var i = 0; i < countryDataList.length; i++) {
      if (countryDataList[i]['country'] == location) {
        newCases = countryDataList[i]['cases']['new'];
        activeCases = countryDataList[i]['cases']['active'];
        recoveredCases = countryDataList[i]['cases']['recovered'];
        deathes = countryDataList[i]['deaths']['total'];
        day = countryDataList[i]['day'];
        Map flippedCard = {
          'newCases': newCases,
          'activeCases': activeCases,
          'recoveredCases': recoveredCases,
          'deathes': deathes,
          'day': day
        };
        return flippedCard;
        //print(countryDataList[i]);

      }
    }
  }
}
//api response
// {continent":"North-America","country":"Caribbean-Netherlands","population":26362,"cases":{"new":null,"active":113,"critical":null,"recovered":244,"1M_pop":"13656","total":360},"deaths":{"new":null,"1M_pop":"114","total":3},"tests":{"1M_pop":"195167","total":5145},"day":"2021-01-26","time":"2021-01-26T09:30:06+00:00"}

//FUTURE BULDER

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
            return Column(
              children: [
                MyHeader(
                  image: "assets/images/homeScreen.png",
                  textTop: "Case Update",
                  textBottom: snapshot.data['day'].toString(),
                ),
                Container(
                  height: height * .55,
                  width: width,
                  child: GridView.count(
                      primary: false,
                      padding: EdgeInsets.only(
                        //top: height * .03,
                        left: width * .03,
                        right: width * .03,
                        bottom: height * .01,
                      ),
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      crossAxisCount: 2,
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
