import 'package:covid/Views/Screens/EnterScreen.dart';
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
        padding: EdgeInsets.only(left: 40, top: 50, right: 20),
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            // colors: colors.map<Color>((Color color) => Color.lerp(null, color, factor)!).toList()
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return EnterScreen();
                    },
                  ),
                );
              },
              child: Icon(Icons.keyboard_return),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: (height < 0) ? 0 : height,
                    child: Image.asset(
                      widget.image,
                      width: 230,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  Positioned(
                    top: 20 - height * 0.4,
                    left: 150,
                    child: Text(
                      "${widget.textTop} \n${widget.textBottom}",
                      style: kTitleTextstyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(), // I dont know why it can't work without container
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
