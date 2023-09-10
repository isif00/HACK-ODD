import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hack_odd/utils/app_layout.dart';
import 'package:hack_odd/utils/app_style.dart';
import 'package:hack_odd/widgets/stars_stepper.dart';

class BlogWidget extends StatelessWidget {
  const BlogWidget(
      {Key? key,
      required this.blogTitle,
      required this.blogDescription,
      required this.blogAuthor,
      required this.rating})
      : super(key: key);
  final String blogTitle;
  final String blogDescription;
  final String blogAuthor;
  final int rating;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  blogTitle,
                  style: Styles.headLineMedium.copyWith(
                      fontSize: 20,
                      color: Styles.titleColor,
                      fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    FluentIcons.bookmark_24_regular,
                    size: 25,
                    color: Styles.primaryColor,
                  ),
                ),
              ],
            ),
            Gap(AppLayout.getHeight(10)),
            Text(
              blogDescription,
              style: Styles.headLineSmall.copyWith(
                  fontSize: 12,
                  color: Styles.textColor,
                  fontWeight: FontWeight.w500),
            ),
            Gap(AppLayout.getHeight(15)),
            Row(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/image.png'),
                      radius: 22,
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Text(
                      blogAuthor,
                      style: Styles.headLineMedium
                          .copyWith(fontSize: 14, color: Styles.titleColor),
                    ),
                  ],
                ),
                const Spacer(),
                StarsStepper(
                  totalSteps: 5,
                  clickable: false,
                  currentSteps: rating,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
