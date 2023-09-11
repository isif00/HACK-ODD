import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hack_odd/screens/intro_screens/intro_2.dart';
import 'package:hack_odd/utils/app_layout.dart';
import 'package:hack_odd/utils/app_style.dart';

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
                  padding: EdgeInsets.only(
                      left: AppLayout.getHeight(20),
                      right: AppLayout.getHeight(20),
                      top: AppLayout.getHeight(40),
                      bottom: AppLayout.getHeight(40)),
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
                      const Spacer(),
                      Text(
                        textAlign: TextAlign.center,
                        'Pour assurer la sécurité de votre compte, veuillez entrer le code de vérification que nous avons envoyé à votre numéro de téléphone',
                        style: Styles.headLineSmall,
                      ),
                      const Spacer(),
                      SizedBox(
                        height: AppLayout.getHeight(56),
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WelcomeScreen2()),
                            );
                          },
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
