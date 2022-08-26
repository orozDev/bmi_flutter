import 'package:flutter/material.dart';
import 'package:bmi/constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AgeWeightWidget extends StatelessWidget {
  final int value;
  final String text;
  final Function increase;
  final Function decrease;
  const AgeWeightWidget({Key? key,
    required this.value,
    required this.increase,
    required this.decrease,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: cBodyTextStyle,
            ),
            Text('$value', style: cTitleTextStyle),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundColor: cButtonColor,
              
              child: IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.plus,
                  size: 20.0,
                  color: Colors.white,
                ),
                onPressed: () => increase(),
              ),
            ),
            CircleAvatar(
              backgroundColor: cButtonColor,
              radius: 25.0,
              child: IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.minus,
                  size: 20.0,
                  color: Colors.white,
                ),
                onPressed: () => decrease(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
