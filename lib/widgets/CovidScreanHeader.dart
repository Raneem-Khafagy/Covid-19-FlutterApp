import 'package:flutter/material.dart';

import '../Constants.dart';

class CovidMiniCardHeader extends StatelessWidget {
  const CovidMiniCardHeader({
    Key key,
    @required this.height,
    @required this.width,
    this.heading1,
    this.heading2,
    this.heading3,
    this.imagePathPageContent,
  }) : super(key: key);

  final double height;
  final double width;
  //header conten
  final String heading1;
  final String heading2;
  final String heading3;
  final String imagePathPageContent;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              Text(heading1, style: lightCovidTextStyle),
              Text(heading2, style: covidTextStyle),
              Container(
                  width: width * .55,
                  child: Text(heading3, style: subTextStyle)),
            ],
          ),
          Container(
            width: width * .3,
            height: height * .3,
            child: Image(
              image: AssetImage(imagePathPageContent),
            ),
          ),
        ],
      ),
    );
  }
}
