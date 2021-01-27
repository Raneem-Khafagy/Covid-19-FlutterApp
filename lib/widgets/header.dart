import 'package:flutter/material.dart';

import '../Constants.dart';

class MyHeader extends StatefulWidget {
  final String image;
  final String textTop;
  final String textBottom;
  //final double offset;
  const MyHeader({
    Key key,
    this.image,
    this.textTop,
    this.textBottom,
    /*this.offset*/
  }) : super(key: key);

  @override
  _MyHeaderState createState() => _MyHeaderState();
}

class _MyHeaderState extends State<MyHeader> {
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
            image: AssetImage("assets/images/homeScreen.png"),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pop(
                  context,
                );
              },
              child: Icon(Icons.keyboard_return),
            ),
            SizedBox(height: height * .2),
            Positioned(
              top: height * 0.2,
              right: width * .5,
              child: Column(
                children: [
                  Text(widget.textTop, style: kHeadingTextStyle),
                  Text(widget.textBottom, style: kHeadingTextStyle),
                ],
              ),
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
