import 'package:bmi/pages/calculator.dart';
import 'package:flutter/material.dart';
import 'package:bmi/constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('КАЛЬКУЛЯТОР ИМТ ОТ OROZ', style: cBIMTextStyle),
        backgroundColor: cBG,
      ),
      body: Calculator(),
    );
  }
}