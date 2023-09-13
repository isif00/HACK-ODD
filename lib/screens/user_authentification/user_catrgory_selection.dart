import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hack_odd/utils/app_layout.dart';
import 'package:hack_odd/utils/app_style.dart';
import 'package:hack_odd/widgets/main_button.dart';
import 'package:hack_odd/widgets/user_card.dart';

class UserCategory extends StatelessWidget {
  const UserCategory({Key? key}) : super(key: key);

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
              "Start Your Journey",
              style: Styles.headLine1.copyWith(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            Gap(AppLayout.getHeight(15)),
            Text(
              "Choose your role to begin Contributing",
              style: Styles.headLineMedium
                  .copyWith(fontSize: 16, color: Styles.textColor),
              textAlign: TextAlign.center,
            ),
            Gap(AppLayout.getHeight(50)),
            const UserCard(
              profession: 'Volunteer',
              professionDescription: "Join and make a difference.",
              userCategoryImage: 'volunteer.png',
            ),
            const UserCard(
              profession: 'Organization',
              professionDescription: "Lead events to make changes",
              userCategoryImage: 'organization.png',
            ),
            const Spacer(),
            const MainButton(buttonText: 'Continue'),
          ],
        ),
      ),
    );
  }
}
