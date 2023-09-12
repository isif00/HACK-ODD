import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hack_odd/utils/FAANG_icon.dart';
import 'package:hack_odd/utils/app_layout.dart';
import 'package:hack_odd/utils/app_style.dart';

class MainSignIn extends StatelessWidget {
  const MainSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: AppLayout.getHeight(20),
            right: AppLayout.getHeight(20),
            top: AppLayout.getHeight(10),
            bottom: AppLayout.getHeight(40)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: AppLayout.getHeight(50),
                  bottom: AppLayout.getHeight(20)),
              child: Container(
                height: AppLayout.getHeight(350),
                width: AppLayout.getHeight(350),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/s1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(10)),
            Text(
              "Sign In",
              style: Styles.headLine1.copyWith(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            Gap(AppLayout.getHeight(15)),
            Text(
              "Be part of a global community dedicated to saving our planet. Sign up now and start making a difference!",
              style: Styles.headLineMedium
                  .copyWith(fontSize: 16, color: Styles.textColor),
              textAlign: TextAlign.center,
            ),
            Gap(AppLayout.getHeight(20)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(AppLayout.getHeight(10)),
                backgroundColor: Colors.white,
                foregroundColor: Styles.primaryColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(color: Styles.disabledColor),
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.all(AppLayout.getHeight(10)),
                child: Row(
                  children: [
                    const FaangIcons(logo: 'Google.png'),
                    Gap(AppLayout.getHeight(50)),
                    Text(
                      'Sign In with google',
                      style: Styles.headLineMedium.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Styles.titleColor),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Gap(AppLayout.getHeight(15)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(AppLayout.getHeight(10)),
                backgroundColor: Colors.white,
                foregroundColor: Styles.primaryColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(color: Styles.disabledColor),
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.all(AppLayout.getHeight(10)),
                child: Row(
                  children: [
                    const FaangIcons(logo: 'apple.png'),
                    Gap(AppLayout.getHeight(50)),
                    Text(
                      'Sign In with Apple',
                      style: Styles.headLineMedium.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Styles.titleColor),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Gap(AppLayout.getHeight(15)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(AppLayout.getHeight(10)),
                backgroundColor: Colors.white,
                foregroundColor: Styles.primaryColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(color: Styles.disabledColor),
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.all(AppLayout.getHeight(10)),
                child: Row(
                  children: [
                    const FaangIcons(logo: 'Mail.png'),
                    Gap(AppLayout.getHeight(50)),
                    Text(
                      'Sign In with Email',
                      style: Styles.headLineMedium.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Styles.titleColor),
                      textAlign: TextAlign.center,
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
