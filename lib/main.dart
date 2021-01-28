import 'package:flutter/material.dart';
//screens
import 'Views/Screens/EnterScreen.dart';
import 'Views/Screens/HomeScreen.dart';

void main() => runApp(Covid());

class Covid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid 19',
      routes: {
        '/EnterScreen': (context) => EnterScreen(),
        '/HomeScreen': (context) => HomeScreen(),
      },
      home: EnterScreen(),
    );
  }
}
