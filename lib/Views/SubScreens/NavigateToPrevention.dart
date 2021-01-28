import 'package:covid/Models/CovidCardContent.dart';
import 'package:covid/widgets/CovidMinCard.dart';
import 'package:covid/widgets/CovidScreanHeader.dart';
import 'package:flutter/material.dart';

class NavigateToPrevention extends StatelessWidget {
  const NavigateToPrevention({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/bg.png"),
          ),
        ),
        width: width,
        height: height,
        child: ListView(
          children: [
            CovidMiniCardHeader(
              width: width,
              height: height,
              heading1: prevention.heading1,
              heading2: prevention.heading2,
              heading3: prevention.heading3,
              imagePathPageContent: prevention.imagePathPageContent,
            ),
            GridView.count(
              padding: EdgeInsets.only(
                //top: height * .03,
                left: width * .03,
                right: width * .03,
                bottom: height * .01,
              ),
              crossAxisSpacing: 9,
              mainAxisSpacing: 9,
              crossAxisCount: 2,
              childAspectRatio: (1 / 1.9),
              controller: new ScrollController(keepScrollOffset: false),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                CovidMiniCard(
                  titleSubContent: prevention.content[0].titleSubContent,
                  detailsSubContent: prevention.content[0].detailsSubContent,
                  imagePathSubContent:
                      prevention.content[0].imagePathSubContent,
                ),
                CovidMiniCard(
                  titleSubContent: prevention.content[1].titleSubContent,
                  detailsSubContent: prevention.content[1].detailsSubContent,
                  imagePathSubContent:
                      prevention.content[1].imagePathSubContent,
                ),
                CovidMiniCard(
                  titleSubContent: prevention.content[2].titleSubContent,
                  detailsSubContent: prevention.content[2].detailsSubContent,
                  imagePathSubContent:
                      prevention.content[2].imagePathSubContent,
                ),
                CovidMiniCard(
                  titleSubContent: prevention.content[3].titleSubContent,
                  detailsSubContent: prevention.content[3].detailsSubContent,
                  imagePathSubContent:
                      prevention.content[3].imagePathSubContent,
                ),
                CovidMiniCard(
                  titleSubContent: prevention.content[4].titleSubContent,
                  detailsSubContent: prevention.content[4].detailsSubContent,
                  imagePathSubContent:
                      prevention.content[4].imagePathSubContent,
                ),
                CovidMiniCard(
                  titleSubContent: prevention.content[5].titleSubContent,
                  detailsSubContent: prevention.content[5].detailsSubContent,
                  imagePathSubContent:
                      prevention.content[5].imagePathSubContent,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
