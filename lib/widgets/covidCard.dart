import 'package:covid/Views/SubScreens/Covid19MiniCards.dart';
import 'package:flutter/material.dart';

import '../Constants.dart';

class CovidCard extends StatefulWidget {
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
  _CovidCardState createState() => _CovidCardState();
}

class _CovidCardState extends State<CovidCard> {
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
            Image.asset(widget.image),
            Positioned(
              left: width * .3,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    width * .04, height * .02, width * .04, 0),
                height: height * .2,
                width: MediaQuery.of(context).size.width - width * 0.35,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(widget.title, style: lighterTextStyle),
                    SizedBox(
                      height: height * .01,
                    ),
                    Expanded(
                      child: Text(widget.text,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: lightTextStyle),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Covid19MiniCards()),
                            );
                          },
                          child: Container(
                            color: Colors.yellow.shade600,
                            padding: const EdgeInsets.all(8),
                            child: Icon(
                              Icons.arrow_forward,
                            ),
                          ),
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
