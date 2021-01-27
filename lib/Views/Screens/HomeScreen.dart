import 'package:covid/widgets/covidCard.dart';

import 'package:covid/widgets/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:covid/widgets/header.dart';

import '../../Constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
              text:
                  "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
              image: "assets/images/homeScreen.png",
              title: "Wear face mask",
            ),
          ],
        ),
      ),
    );
  }
}
