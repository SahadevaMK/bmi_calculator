import 'package:flutter/material.dart';

class ReuseCard extends StatelessWidget {
   ReuseCard({required this.colour,this.cardChild,this.onPress});
    final Color colour;
    dynamic cardChild;
    dynamic onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
