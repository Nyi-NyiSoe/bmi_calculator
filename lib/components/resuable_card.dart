import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  ResuableCard({required this.colour, required this.cardChild,this.OnPress});
  final Widget cardChild;
  final Color colour;
  final  VoidCallback? OnPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}