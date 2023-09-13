import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hack_odd/utils/FAANG_icon.dart';
import 'package:hack_odd/utils/app_layout.dart';
import 'package:hack_odd/utils/app_style.dart';
import 'package:hack_odd/widgets/main_button.dart';
import 'package:hack_odd/widgets/text_input.dart';

class EmailSignIn extends StatelessWidget {
  const EmailSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: AppLayout.getHeight(20),
            right: AppLayout.getHeight(20),
            top: AppLayout.getHeight(100),
            bottom: AppLayout.getHeight(40)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            Gap(AppLayout.getHeight(30)),
            Align(
              alignment: Alignment.centerLeft, // Align to the left
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email adress",
                    style: Styles.headLineSmall.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  Gap(AppLayout.getHeight(5)),
                  const TextInput(hintText: 'Email'),
                  Gap(AppLayout.getHeight(20)),
                  Text(
                    "Password",
                    style: Styles.headLineSmall.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  Gap(AppLayout.getHeight(5)),
                  TextFormField(
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return 'Password is required';
                      }
                      return null;
                    },
                    obscureText: true,
                    style: Styles.headLineSmall
                        .copyWith(fontWeight: FontWeight.w800),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(20.0),
                        horizontal: AppLayout.getWidth(20.0),
                      ),
                      hintText: 'Password',
                    ),
                  ),
                ],
              ),
            ),
            Gap(AppLayout.getHeight(8)),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {},
                child: Text(
                  "Forgot Password?",
                  style: Styles.headLineSmall.copyWith(
                    fontSize: 12,
                    color: Styles.primaryColor,
                  ),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(25)),
            const MainButton(buttonText: "Sign In"),
            Gap(AppLayout.getHeight(15)),
            Text(
              "Or Sign In with",
              style: Styles.headLineSmall.copyWith(
                fontSize: 14,
                color: Styles.textColor,
              ),
            ),
            Gap(AppLayout.getHeight(50)),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center the row
                children: [
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
                      padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(23),
                        vertical: AppLayout.getHeight(18),
                      ),
                      child: const Row(
                        children: [
                          FaangIcons(logo: 'Google.png'),
                        ],
                      ),
                    ),
                  ),
                  Gap(AppLayout.getHeight(10)),
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
                      padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(23),
                        vertical: AppLayout.getHeight(18),
                      ),
                      child: const Row(
                        children: [
                          FaangIcons(logo: 'apple.png'),
                        ],
                      ),
                    ),
                  ),
                  Gap(AppLayout.getHeight(10)),
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
                      padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(23),
                        vertical: AppLayout.getHeight(18),
                      ),
                      child: const Row(
                        children: [
                          FaangIcons(logo: 'Mail.png'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap(AppLayout.getHeight(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: Styles.headLineSmall.copyWith(
                    fontSize: 12,
                  ),
                ),
                Gap(AppLayout.getHeight(3)),
                Text(
                  "Log In",
                  style: Styles.headLineSmall.copyWith(
                    color: Styles.primaryColor,
                    fontSize: 12,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
