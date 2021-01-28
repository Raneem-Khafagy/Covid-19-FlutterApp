import 'package:flutter/material.dart';

import '../Constants.dart';

class MyHeader extends StatelessWidget {
  final String image;

  final String textTop;
  final String textBottom;
  final String date;
  //final double offset;
  const MyHeader({
    Key key,
    this.image,
    this.textTop,
    this.textBottom,
    this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(
          left: width * 0.1,
          top: height * 0.06,
          right: width * 0.05,
        ),
        height: height * 0.45,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              bgColor,
              wColor,
            ],
          ),
          image: DecorationImage(
            scale: 6,
            image: AssetImage("assets/images/homeScreen.png"),
          ),
        ),
        child: Column(
          children: <Widget>[
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
            SizedBox(height: height * .19),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(textTop, style: headingTextStyle),
                    date == null
                        ? Text(textBottom, style: headingTextStyle)
                        : Text(date, style: lightTextStyle),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
