import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hack_odd/utils/app_layout.dart';
import 'package:hack_odd/utils/app_style.dart';
import 'package:hack_odd/widgets/main_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: AppLayout.getHeight(90),
                left: AppLayout.getHeight(15),
                right: AppLayout.getHeight(15)),
            child: Container(
              height: AppLayout.getHeight(350),
              width: AppLayout.getHeight(350),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/p1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(10)),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    spreadRadius: -0.2,
                    color: Color.fromARGB(255, 230, 230, 230), //New
                    blurRadius: 25.0,
                    offset: Offset(0, -10),
                  ),
                ],
              ),
              child: Card(
                elevation: 0,
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: EdgeInsets.all(AppLayout.getHeight(20)),
                  child: Column(
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Apporter',
                                style: Styles.headLine1.copyWith(fontSize: 21)),
                            TextSpan(
                                text: ' un Changement Positif ',
                                style: Styles.headLine1.copyWith(
                                    color: Styles.primaryColor, fontSize: 21)),
                            TextSpan(
                                text: 'n`a jamais été aussi ',
                                style: Styles.headLine1.copyWith(fontSize: 21)),
                            TextSpan(
                              text: 'Facile',
                              style: Styles.headLine1.copyWith(
                                  color: Styles.primaryColor, fontSize: 21),
                            ),
                          ],
                        ),
                      ),
                      Gap(AppLayout.getHeight(15)),
                      Text(
                        textAlign: TextAlign.center,
                        'Pour assurer la sécurité de votre compte, veuillez entrer le code de vérification que nous avons envoyé à votre numéro de téléphone',
                        style: Styles.headLineSmall,
                      ),
                      Gap(AppLayout.getHeight(25)),
                      const MainButton(buttonText: 'Get Started'),
                      Gap(AppLayout.getHeight(25)),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Already have an account? ",
                                style: Styles.headLineSmall),
                            TextSpan(
                              text: "Sign In",
                              style: Styles.headLineSmall
                                  .copyWith(color: Styles.primaryColor),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
