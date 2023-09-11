import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hack_odd/utils/app_layout.dart';
import 'package:hack_odd/utils/app_style.dart';
import 'package:hack_odd/widgets/pages_steps.dart';

class WelcomeScreen5 extends StatelessWidget {
  const WelcomeScreen5({Key? key}) : super(key: key);

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
              ),
              child: Container(
                height: AppLayout.getHeight(350),
                width: AppLayout.getHeight(350),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/p5.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(25)),
            Text(
              "Together, We're Stronger!",
              style: Styles.headLine1.copyWith(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            Gap(AppLayout.getHeight(30)),
            Text(
              "Change is possible when we unite. Join thousands of fellow Econnect worldwide. Together, we amplify our impact and protect our home.",
              style: Styles.headLineMedium
                  .copyWith(fontSize: 16, color: Styles.textColor),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            SizedBox(
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
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
