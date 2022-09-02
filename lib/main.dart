import 'package:firstapp/pages/home_page.dart';
import 'package:firstapp/utils/routes.dart';
import 'package:firstapp/widgets/themes.dart';
import 'package:flutter/material.dart';
import "package:firstapp/pages/login_page.dart";
import 'package:google_fonts/google_fonts.dart';
// ignore_for_file: prefer_const_constructors

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
