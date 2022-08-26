import 'package:bmi/pages/results.dart';
import 'package:bmi/widgets/age_and_weight_widget.dart';
import 'package:bmi/widgets/card_input.dart';
import 'package:bmi/widgets/gender_widget.dart';
import 'package:bmi/widgets/height_widget.dart';
import 'package:flutter/material.dart';
import 'package:bmi/constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int height = 184;
  bool gender = true;
  int weight = 69;
  int age = 19;

  void onChangeGenderToMale() => setState(() => gender = true);
  void onChangeGenderToFemale() => setState(() => gender = false);
  void onChangeHeight(value) => setState(() => height = value.round());
  void increaseWeight() => setState(() => weight++);
  void decreaseWeight() => setState(() => weight--);
  void increaseAge() => setState(() => age++);
  void decreaseAge() => setState(() => age--);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: cBG,
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ListView(
          children: [
            Row(
              children: [
                CardInput(
                  color: gender ? cActiveCardColor : cInactiveCardColor,
                  onChange: onChangeGenderToMale,
                  child: const GenderWidget(
                    icon: FaIcon(
                      FontAwesomeIcons.mars,
                      size: 80.0,
                      color: Colors.white,
                    ),
                    text: 'МУЖСКОЙ',
                  ),
                ),
                CardInput(
                  color: !gender ? cActiveCardColor : cInactiveCardColor,
                  onChange: onChangeGenderToFemale,
                  child: const GenderWidget(
                    icon: FaIcon(
                      FontAwesomeIcons.venus,
                      size: 80.0,
                      color: Colors.white,
                    ),
                    text: 'ЖЕНСКИЙ',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                CardInput(
                  onChange: () {},
                  child: HeightWidget(
                    onChange: onChangeHeight,
                    height: height,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                CardInput(
                  onChange: () {},
                  child: AgeWeightWidget(
                    decrease: decreaseWeight,
                    increase: increaseWeight,
                    text: 'ВЕС',
                    value: weight,
                  ),
                ),
                CardInput(
                  onChange: () {},
                  child: AgeWeightWidget(
                    decrease: decreaseAge,
                    increase: increaseAge,
                    text: 'ВОЗРАСТ',
                    value: age,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Results(
                            age: age,
                            height: height,
                            weight: weight,
                            gender: gender,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: cBottomContainerColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 45, vertical: 20),
                        textStyle: cBIMTextStyle),
                    child: const Text(
                      'РАССЧИТАТЬ ВАШ ИМТ',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
