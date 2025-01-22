import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'gender_widget_content.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xff111328);
const containerColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  Gender? selectedGender;

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  void onTap(Gender gender) {
    setState(() {
      widget.selectedGender = gender;
    });
  }

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
                    color: widget.selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: genderWidgetContent('male'),
                    onPress: () => {
                      setState(() {
                        widget.selectedGender = Gender.male;
                      })
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: widget.selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    onPress: () => {
                      setState(() {
                        widget.selectedGender = Gender.female;
                      })
                    },
                    cardChild: genderWidgetContent("female"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: activeCardColor,
              onPress: () {},
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    onPress: () {},
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    onPress: () {},
                  ),
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

enum Gender { male, female }
