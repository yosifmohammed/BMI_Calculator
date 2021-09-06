import 'package:BMICalculator/modules/home/homePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}