import 'package:flutter/material.dart';

import 'input.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0x0ffa0e21),
        scaffoldBackgroundColor: Color(0x0ffa0e21),

      ),


      home:  InputPage(),
    );
  }
}

