import 'package:flutter/material.dart';
import 'package:hack_odd/screens/intro_screen.dart';
import 'package:hack_odd/utils/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey, primaryColor: Styles.primaryColor),
      home: const IntroScreen(),
    );
  }
}
