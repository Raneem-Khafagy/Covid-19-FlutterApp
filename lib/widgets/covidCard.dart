import 'package:flutter/material.dart';

import '../Constants.dart';

class CovidCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const CovidCard({
    Key key,
    this.image,
    this.title,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.fromLTRB(
          height * .009, width * .09, height * .009, width * .09),
      child: SizedBox(
        height: height * .28,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Container(
              height: height * .2,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 8),
                    blurRadius: 24,
                    color: shadowColor,
                  ),
                ],
              ),
            ),
            Image.asset(image),
            Positioned(
              left: width * .3,
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: width * .04, vertical: height * .02),
                height: height * .2,
                width: MediaQuery.of(context).size.width - width * 0.35,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(title, style: lighterTextStyle),
                    SizedBox(
                      height: height * .01,
                    ),
                    Expanded(
                      child: Text(text,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: lightTextStyle),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
