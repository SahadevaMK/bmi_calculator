import 'package:flutter/material.dart';

class ReuseCard extends StatelessWidget {
   ReuseCard({required this.colour,this.cardChild});
    final Color colour;
    dynamic cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardChild,
    );
  }
}
