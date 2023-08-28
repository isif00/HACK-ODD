import 'package:flutter/material.dart';
import 'package:hack_odd/utils/app_style.dart';


class Steps extends StatelessWidget {
  const Steps({super.key, required this.totalSteps, required this.currentStep});
  final int totalSteps;
  final int currentStep;


  @override
  Widget build(BuildContext context) {

    List<Widget> iconButtonWidgets = [];


    for (int i = 0; i < totalSteps; i++) {
      if(i >= currentStep) {
        iconButtonWidgets.add(
          IconButton(
            icon: Icon(Icons.circle_rounded, color: Styles.stepGrey,),
            // Customize the icon as needed
            onPressed: () {
              // Do something when the IconButton is pressed
              print('IconButton $i pressed.');
            },
          ),
        );
      }
      else{
        iconButtonWidgets.add(
          IconButton(
            icon: Icon(Icons.circle_rounded, color: Styles.primaryColor,),
            // Customize the icon as needed
            onPressed: () {
              // Do something when the IconButton is pressed
              print('IconButton $i pressed.');
            },
          ),
        );
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: iconButtonWidgets,
    );
  }
}