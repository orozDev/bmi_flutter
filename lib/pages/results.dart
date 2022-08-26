import 'package:flutter/material.dart';
import 'package:bmi/constants/constants.dart';

class Results extends StatelessWidget {
  final int height;
  final bool gender;
  final int weight;
  final int age;

  const Results({
    Key? key,
    required this.age,
    required this.gender,
    required this.weight,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double temp = height / 100;
    double results = (weight / (temp * temp));

    String grade = '';
    String msg = '';
    Color gradeColor;
    if (results <= 16) {
      grade = "ДЕФИЦИТ МАССЫ";
      gradeColor = Colors.red;
      msg = 'Выраженный дефицит массы тела от 16 и менее';
    } else if (results > 16 && results <= 18.5) {
      grade = "НЕДОСТАТОЧНАЯ МАССА";
      gradeColor = Colors.yellow;
      msg = '	Недостаточная (дефицит) масса тела от 16-18,5';
    } else if (results > 18.5 && results <= 24.9) {
      grade = "НОРМА";
      gradeColor = Colors.green;
      msg = 'Норма начинается от 18,5-25';
    } else if (results > 24.9 && results <= 30) {
      grade = "ИЗБЫТОЧНАЯ МАССА";
      gradeColor = Colors.yellow;
      msg = 'Избыточная масса тела (предожирение) от 25-30';
    } else if (results > 30 && results <= 35) {
      grade = "ОЖИРЕНИЕ I СТЕПЕНИ";
      gradeColor = Colors.red;
      msg = 'Ожирение первой степени от 30-35';
    } else if (results > 35 && results <= 40) {
      grade = "ОЖИРЕНИЕ II СТЕПЕНИ";
      gradeColor = Colors.red;
      msg = 'Ожирение второй степени от 35-40';
    } else {
      grade = "ОЖИРЕНИЕ III СТЕПЕНИ";
      gradeColor = Colors.red;
      msg = 'Ожирение третьей степени (морбидное) jn 40 и более';
    }

    int roundedResults = results.round();

    return Scaffold(
      appBar: AppBar(
        title: Text('РЕЗУЛЬТАТЫ', style: cBIMTextStyle),
        backgroundColor: cBG,
      ),
      body: Container(
        color: cBG,
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
        height: double.infinity,
        width: double.infinity,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(40.0),
          decoration: BoxDecoration(
              color: cInactiveCardColor,
              borderRadius: BorderRadius.circular(20.0)),
          child: ListView(
            children: [Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  grade,
                  style: TextStyle(
                    color: gradeColor,
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '$roundedResults',
                  style: cResultTextStyle,
                ),
                Text(
                  msg,
                  style: cBodyTextStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy ",
                  style: NormalText,
                  textAlign: TextAlign.center,
                )
              ],
            )],
          ),
        ),
      ),
    );
  }
}
