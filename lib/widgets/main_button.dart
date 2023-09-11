import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hack_odd/utils/app_layout.dart';
import 'package:hack_odd/utils/app_style.dart';

class MainButton extends StatelessWidget {
  const MainButton(
      {super.key, required this.buttonText, this.icon, this.nextWidget});
  final String buttonText;
  final IconData? icon;
  final Widget? nextWidget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppLayout.getHeight(56),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Styles.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            elevation: 0.0,
            shadowColor: Colors.transparent),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            icon == null
                ? Gap(AppLayout.getWidth(0))
                : Gap(AppLayout.getWidth(15)),
            Icon(icon),
          ],
        ),
      ),
    );
  }
}
