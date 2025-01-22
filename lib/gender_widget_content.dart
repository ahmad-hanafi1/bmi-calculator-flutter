import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const textLayout = TextStyle(fontSize: 18, color: Color(0xFF8d8e98));

class genderWidgetContent extends StatelessWidget {
  final String gender;
  genderWidgetContent(this.gender);
  late final IconData icon =
      this.gender == "male" ? FontAwesomeIcons.mars : FontAwesomeIcons.venus;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          this.gender == "male" ? "MALE" : "FEMALE",
          style: textLayout,
        )
      ],
    );
  }
}
