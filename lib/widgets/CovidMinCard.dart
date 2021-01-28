import 'package:flutter/material.dart';

import '../Constants.dart';

class CovidMiniCard extends StatelessWidget {
  const CovidMiniCard({
    Key key,
    this.titleSubContent,
    this.detailsSubContent,
    this.imagePathSubContent,
  }) : super(key: key);

  //cards content
  final String titleSubContent;
  final String detailsSubContent;
  final String imagePathSubContent;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: wColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(height * 0.2),
              bottomRight: Radius.circular(height * 0.2),
              topLeft: Radius.circular(height * 0.4),
              topRight: Radius.circular(height * 0.4),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 8),
                blurRadius: 24,
                color: shadowColor,
              ),
            ],
          ),
          child: Container(
            width: width,
            child: Column(
              children: [
                Container(
                  width: width,
                  child: Image(
                    image: AssetImage(imagePathSubContent),
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Container(
                  width: width,
                  child: Text(
                    titleSubContent,
                    style: covidHTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    detailsSubContent,
                    style: subTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
