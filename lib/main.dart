import 'package:flutter/material.dart';
import 'package:login/pages/homePage.dart';
import 'package:login/pages/loginPage.dart';
import 'package:login/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App mobile III',
      theme: ThemeData(colorSchemeSeed: Colors.cyan[200]),
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.login: (_) => Loginpage(),
        AppRoutes.home: (_) => HomePage(),
      },
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (_) => Loginpage()),
    );
  }
}
