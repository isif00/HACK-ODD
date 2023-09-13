import 'package:flutter/material.dart';
import 'package:hack_odd/screens/events_screen.dart';
//import 'package:hack_odd/screens/events_screen.dart';
import 'package:hack_odd/screens/intro_screen.dart';
import 'package:hack_odd/screens/intro_screens/intro_1.dart';
import 'package:hack_odd/screens/intro_screens/intro_2.dart';
import 'package:hack_odd/screens/user_authentification/email_signin.dart';
import 'package:hack_odd/screens/user_authentification/user_catrgory_selection.dart';
import 'package:hack_odd/utils/app_layout.dart';
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
        appBarTheme: AppBarTheme(
            toolbarHeight: AppLayout.getHeight(65),
            elevation: 0.0,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Styles.primaryColor)),
        primaryColor: Styles.titleColor,
        inputDecorationTheme: InputDecorationTheme(
          suffixIconColor: Styles.primaryColor,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Styles.titleColor, width: AppLayout.getHeight(2.5)),
              borderRadius: BorderRadius.circular(8.0)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Styles.disabledColor, width: AppLayout.getHeight(2.0)),
              borderRadius: BorderRadius.circular(8.0)),
        ),
      ),
      home: const EmailSignIn(),
    );
  }
}
