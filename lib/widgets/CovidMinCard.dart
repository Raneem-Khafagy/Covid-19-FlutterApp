import 'package:flutter/material.dart';

import '../Constants.dart';

class CovidMiniCard extends StatelessWidget {
  const CovidMiniCard({
    Key key,
    @required this.height,
    @required this.width,
    this.titleSubContent,
    this.detailsSubContent,
    this.imagePathSubContent,
  }) : super(key: key);

  final double height;
  final double width;
  //cards content
  final String titleSubContent;
  final String detailsSubContent;
  final String imagePathSubContent;
  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                SizedBox(
                  height: height * .28,
                ),
                Text(
                  titleSubContent,
                  style: covidHTextStyle,
                ),
                Text(
                  detailsSubContent,
                  style: subTextStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Image(
            image: AssetImage(imagePathSubContent),
            fit: BoxFit.scaleDown,
          ),
        ),
      ],
    );
  }
}
