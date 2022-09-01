import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int days = 1;
    final String name = "MyApp";
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Text("Welcome to $name app Day: $days"),
      ),
      drawer: Drawer(),
    );
  }
}
