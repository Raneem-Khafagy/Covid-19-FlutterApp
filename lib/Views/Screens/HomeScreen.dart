import 'package:covid/Views/SubScreens/NavigateToPrevention.dart';
import 'package:covid/Views/SubScreens/NavigateToSymtoms.dart';
import 'package:covid/widgets/covidCard.dart';

import 'package:covid/widgets/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:covid/widgets/header.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MyHeader(
              image: "assets/images/homeScreen.png",
              textTop: "Get to know",
              textBottom: "About Covid-19.",
            ),
            SearchBar(),
            CovidCard(
              text: "COVID-19 affects different people in different ways.",
              image: "assets/images/symptoms.png",
              title: "symptoms",
              navigateToRoute: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavigateToSymtoms()),
                );
              },
            ),
            CovidCard(
              text:
                  "Protect yourself and others around you by taking appropriate precautions.",
              image: "assets/images/prevention.png",
              title: "prevention",
              navigateToRoute: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NavigateToPrevention()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
