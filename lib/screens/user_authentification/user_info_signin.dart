import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hack_odd/utils/app_layout.dart';
import 'package:hack_odd/utils/app_style.dart';
import 'package:hack_odd/widgets/birthday_field.dart';
import 'package:hack_odd/widgets/main_button.dart';
import 'package:hack_odd/widgets/pronouns_dropdown.dart';
import 'package:hack_odd/widgets/text_input.dart';

class UserInfoSignIn extends StatelessWidget {
  const UserInfoSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: AppLayout.getHeight(150),
          bottom: AppLayout.getHeight(60),
          left: AppLayout.getHeight(10),
          right: AppLayout.getHeight(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Let's Get to Know You",
              style: Styles.headLine1.copyWith(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            Gap(AppLayout.getHeight(15)),
            Text(
              "Help us understand you better by providing some information.",
              style: Styles.headLineMedium
                  .copyWith(fontSize: 16, color: Styles.textColor),
              textAlign: TextAlign.center,
            ),
            Gap(AppLayout.getHeight(45)),
            Column(
              children: [
                Row(
                  children: [
                    const PronounsDropDown(),
                    Gap(AppLayout.getHeight(5)),
                    const Expanded(child: TextInput(hintText: 'First Name')),
                  ],
                ),
                const Gap(10),
                const TextInput(hintText: 'Last Name'),
                const Gap(10),
                const DobInputField(),
                const Gap(10),
              ],
            ),
            const MainButton(buttonText: 'Continue'),
          ],
        ),
      ),
    );
  }
}
