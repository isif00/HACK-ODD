import 'package:flutter/material.dart';
import 'package:hack_odd/utils/app_layout.dart';
import 'package:hack_odd/utils/app_style.dart';

class StarsStepper extends StatefulWidget {
  const StarsStepper({super.key, required this.totalSteps});
  final int totalSteps;

  @override
  State<StarsStepper> createState() => _StarsStepperState();
}

class _StarsStepperState extends State<StarsStepper> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> iconButtonWidgets = [];

    for (int i = 0; i < widget.totalSteps; i++) {
      if (i >= currentStep + 1) {
        iconButtonWidgets.add(
          Container(
            margin: EdgeInsets.all(AppLayout.getHeight(5)),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentStep = i;
                });
              },
              child: Icon(
                Icons.star,
                color: Styles.disabledColor,
                size: AppLayout.getHeight(20),
              ),
            ),
          ),
        );
      } else {
        iconButtonWidgets.add(
          Container(
            margin: EdgeInsets.all(AppLayout.getHeight(5)),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentStep = i;
                });
              },
              child: Icon(
                Icons.star,
                color: Styles.primaryColor,
                size: AppLayout.getHeight(20),
              ),
            ),
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
