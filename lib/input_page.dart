import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Color(0xFF1D1E33);
const containerColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    activeCardColor,
                    genderWidgetContent('male'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    activeCardColor,
                    genderWidgetContent("female"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(activeCardColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: containerColor,
            margin: EdgeInsets.only(top: 10),
            height: 80,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}

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
          style: TextStyle(fontSize: 18, color: Color(0xFF8d8e98)),
        )
      ],
    );
  }
}

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
