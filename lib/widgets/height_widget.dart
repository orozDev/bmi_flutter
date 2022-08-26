import 'package:flutter/material.dart';
import 'package:bmi/constants/constants.dart';

class HeightWidget extends StatelessWidget {
  final Function onChange;
  final int height;
  const HeightWidget({Key? key,
    required this.onChange,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'РОСТ',
              style: cBodyTextStyle,
            ),
            Text('$height', style: cTitleTextStyle),
          ],
        ),
        Slider(
          min: 130,
          max: 220,
          value: height.toDouble(),
          onChanged: (value) => onChange(value),
          activeColor: cBottomContainerColor,
        )
      ],
    );
  }
}
