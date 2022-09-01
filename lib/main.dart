import 'package:firstapp/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 1;
    String name = "MyApp";
    double pi = 3.14;
    bool isMale = true;
    num temp = 30.5;
    var v1 = "Tuesday";
    const e = 2.7;
    final bill = 15.5;
    return MaterialApp(
      home: HomePage(),
    );
  }
}
