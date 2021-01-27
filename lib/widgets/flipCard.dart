import 'package:covid/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class FlippingCard extends StatelessWidget {
  final front;
  final back;
  final height;
  final width;

  const FlippingCard({Key key, this.front, this.back, this.height, this.width})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.HORIZONTAL, // default
      front: Container(
          decoration: BoxDecoration(
              color: bgColor, borderRadius: BorderRadius.circular(10)),
          child: Center(child: Text(front))),
      back: Container(
          decoration: BoxDecoration(
              color: bgColor, borderRadius: BorderRadius.circular(10)),
          child: Text(back)),
    );
  }
}
