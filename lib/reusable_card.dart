import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget? cardChild;
  final Color color;
  // final String name;
  ReusableCard(this.color, [this.cardChild]);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild ?? Container(),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
    );
  }
}
