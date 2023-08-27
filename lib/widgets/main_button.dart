import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hack_odd/utils/app_style.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Styles.primaryColor,
          shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        child: const Text(' Elevated Button', style: TextStyle(
          fontSize: 20
        ),)

    );
  }
}
