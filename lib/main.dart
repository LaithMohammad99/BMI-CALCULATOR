import 'package:flutter/material.dart';

import 'Bmi_Screen.dart';

void main() {
  runApp(Test());
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bmi_Calcoluter(),
    );
  }
}
