import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hack_odd/screens/intro_screens/intro_3.dart';
import 'package:hack_odd/utils/app_layout.dart';
import 'package:hack_odd/utils/app_style.dart';
import 'package:hack_odd/widgets/pages_steps.dart';

class WelcomeScreen2 extends StatelessWidget {
  const WelcomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: AppLayout.getHeight(20),
            right: AppLayout.getHeight(20),
            top: AppLayout.getHeight(40),
            bottom: AppLayout.getHeight(40)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: AppLayout.getHeight(90),
                left: AppLayout.getHeight(15),
                right: AppLayout.getHeight(15),
                bottom: AppLayout.getHeight(30),
              ),
              child: Container(
                height: AppLayout.getHeight(350),
                width: AppLayout.getHeight(350),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/p2.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(25)),
            Text(
              "Welcome to Econnect",
              style: Styles.headLine1.copyWith(fontSize: 32),
            ),
            Gap(AppLayout.getHeight(30)),
            Text(
              "Embark on a journey to safeguard our planet. Join our community of changemakers",
              style: Styles.headLineMedium
                  .copyWith(fontSize: 16, color: Styles.textColor),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.all(AppLayout.getHeight(20)),
              child: Row(
                children: [
                  const PagesStepper(totalSteps: 3, currentStep: 1),
                  const Spacer(),
                  FloatingActionButton(
                    elevation: 0,
                    backgroundColor: Styles.primaryColor,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WelcomeScreen3()),
                      );
                    },
                    child: const Icon(FluentIcons.arrow_right_24_filled),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
