import 'package:flutter/material.dart';
import 'package:hack_odd/utils/app_layout.dart';
import 'package:hack_odd/utils/app_style.dart';

class StarsStepper extends StatefulWidget {
  const StarsStepper(
      {super.key,
      required this.totalSteps,
      this.currentSteps,
      required this.clickable});
  final int totalSteps;
  final int? currentSteps;
  final bool clickable;

  @override
  State<StarsStepper> createState() => _StarsStepperState();
}

class _StarsStepperState extends State<StarsStepper> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> iconButtonWidgets = [];

    for (int i = 0; i < widget.totalSteps; i++) {
      iconButtonWidgets.add(
        Container(
          margin: EdgeInsets.all(AppLayout.getHeight(5)),
          child: GestureDetector(
            onTap: () {
              (widget.clickable)
                  ? setState(() {
                      _currentStep = i;
                    })
                  : () {};
            },
            child: Icon(
              Icons.star,
              color: (i >=
                      ((widget.clickable)
                          ? _currentStep + 1
                          : widget.currentSteps!))
                  ? Styles.disabledColor
                  : Styles.primaryColor,
              size: AppLayout.getHeight(20),
            ),
          ),
        ),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: iconButtonWidgets,
    );
  }
}
