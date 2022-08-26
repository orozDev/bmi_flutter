import 'package:flutter/material.dart';
import 'package:bmi/constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderWidget extends StatelessWidget {
  final FaIcon icon;
  final String text;

  const GenderWidget({Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:  [
        icon,
        Text(
            text,
            textAlign: TextAlign.center,
            style: cLargeButtonTextStyle,
        ),
      ],
    );
  }
}
