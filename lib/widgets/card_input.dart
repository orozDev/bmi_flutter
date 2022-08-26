import 'package:flutter/material.dart';
import 'package:bmi/constants/constants.dart';

class CardInput extends StatelessWidget {
  final Color color;
  final Function onChange;
  final Widget child;
  CardInput({Key? key,
    this.color = cInactiveCardColor,
    required this.onChange,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () => onChange(),
        child: Container(
          margin: EdgeInsets.all(8.0),
          height: cCardHeight,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: child,
        ),
      ),
    );
  }
}
