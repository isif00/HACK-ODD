import 'package:flutter/material.dart';
import 'package:hack_odd/utils/app_layout.dart';
import 'package:hack_odd/utils/app_style.dart';

class Underline extends StatelessWidget {
  const Underline({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(30)),
      height: 2,
      decoration: BoxDecoration(color: Styles.primaryColor),
      width: double.infinity,
    );
  }
}
