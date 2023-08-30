import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hack_odd/utils/app_layout.dart';
import 'package:hack_odd/utils/app_style.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(10),
        vertical: AppLayout.getHeight(10),
      ),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: AppLayout.getHeight(15),
            horizontal: AppLayout.getHeight(20)),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Volunteer",
                  style: Styles.headLine1.copyWith(fontSize: 20),
                ),
                const Gap(10),
                Text(
                  "Join and make a difference.",
                  style: Styles.headLineSmall.copyWith(
                    fontSize: 12,
                    color: Styles.disabledColor,
                  ),
                ),
              ],
            ),
            const Gap(16),
            const Spacer(),
            Container(
              width: AppLayout.getHeight(110),
              height: AppLayout.getHeight(100),
              decoration: BoxDecoration(
                color: Styles.disabledColor,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
