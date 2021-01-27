import 'dart:convert' as convert;
import 'package:covid/widgets/flipCard.dart';
import 'package:covid/widgets/searchBar.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

Future fetchData(String location) async {
  var newCases, activeCases, recoveredCases, deathes;

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
        Map flippedCard = {
          'newCases': newCases,
          'activeCases': activeCases,
          'recoveredCases': recoveredCases,
          'deathes': deathes
        };
        return flippedCard;
        //print(countryDataList[i]);

      }
    }
  }
}

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
            return GridView.count(
                primary: false,
                padding: EdgeInsets.only(
                    top: width * .08,
                    left: width * .08,
                    right: width * .08,
                    bottom: height * .05),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: [
                  FlippingCard(
                      height: height,
                      width: width,
                      front: 'activeCases',
                      back: snapshot.data['activeCases'].toString()),
                ]);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
