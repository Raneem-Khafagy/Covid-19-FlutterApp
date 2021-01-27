import 'dart:io';

import 'package:covid/Models/data.dart';

import 'package:flutter/material.dart';

import '../Constants.dart';

var myController = TextEditingController();
// convert user input to standerd form
// capitalize the first letter

class SearchModel {
  String searchString = '';
}

class SearchBar extends StatefulWidget {
  SearchBar({Key key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    void dispose() {
      // Clean up the controller when the widget is disposed.
      myController.dispose();
    }

    return Container(
      padding: EdgeInsets.only(left: width * .08, right: width * .08),
      height: height * .08,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: width * .05),
            width: width * .84,
            height: .1 * height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(height * .02),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 8),
                  blurRadius: 24,
                  color: shadowColor,
                ),
              ],
            ),
            child: Center(
              child: TextField(
                controller: myController,
                cursorColor: Colors.black87,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                      EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                  icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                //capitalize first letter
                                //match Api format
                                CardFutureBuilder(
                                    country:
                                        myController.text[0].toUpperCase() +
                                            myController.text.substring(1))),
                      );
                    },
                    child: Icon(
                      Icons.search,
                      color: Colors.black87,
                    ),
                  ),
                  hintText: 'Enter your country',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
