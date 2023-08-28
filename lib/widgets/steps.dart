import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hack_odd/utils/app_style.dart';

class Steps extends StatelessWidget {
  const Steps({super.key, required this.totalSteps, required this.currentStep});
  final int totalSteps;
  final int currentStep;

  @override
  Widget build(BuildContext context) {
    List<Widget> iconButtonWidgets = [];

    for (int i = 0; i < totalSteps; i++) {
      if (i >= currentStep) {
        iconButtonWidgets.add(
          Container(
            margin: const EdgeInsets.all(5),
            child: Icon(
              Icons.circle_rounded,
              color: Styles.disabledColor,
              size: 15,
            ),
          ),
        );
      } else {
        iconButtonWidgets.add(
          Container(
            margin: const EdgeInsets.all(5),
            child: Icon(
              Icons.circle_rounded,
              color: Styles.primaryColor,
              size: 15,
            ),
          ),
          // Customize the icon as needed
        );
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: iconButtonWidgets,
    );
  }
}
