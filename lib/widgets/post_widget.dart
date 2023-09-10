import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hack_odd/utils/app_layout.dart';
import 'package:hack_odd/utils/app_style.dart';
import 'package:intl/intl.dart';

class PostWidget extends StatelessWidget {
  const PostWidget(
      {super.key,
      required this.blogAuthor,
      required this.publishDate,
      required this.blogDescreption,
      required this.numberOfLikes,
      required this.numberOfComments});
  final String blogAuthor;
  final DateTime publishDate;
  final String blogDescreption;
  final int numberOfLikes;
  final int numberOfComments;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.all(
          AppLayout.getHeight(15),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(5)),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/image.png'),
                    radius: 20,
                  ),
                  Gap(AppLayout.getWidth(8)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        blogAuthor,
                        style: Styles.headLineSmall.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          color: Styles.titleColor,
                        ),
                      ),
                      Text(
                        '${DateFormat.d().format(publishDate)}j ${DateFormat.H().format(publishDate)}h',
                        style: Styles.headLineSmall.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Styles.disabledColor,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            FluentIcons.money_20_regular,
                            color: Styles.primaryColor,
                            size: 22,
                          ),
                        ),
                        Gap(AppLayout.getWidth(5)),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            FluentIcons.bookmark_24_regular,
                            color: Styles.primaryColor,
                            size: 22,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Gap(AppLayout.getHeight(10)),
            Text(
              '${blogDescreption.substring(0, 50)}...',
              style: Styles.headLineSmall.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Styles.textColor,
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              height: AppLayout.getHeight(260),
              width: AppLayout.getHeight(350),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Gap(AppLayout.getHeight(10)),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    FluentIcons.heart_24_regular,
                    color: Styles.primaryColor,
                    size: 25,
                  ),
                ),
                Gap(AppLayout.getHeight(10)),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    FluentIcons.chat_bubbles_question_24_regular,
                    color: Styles.primaryColor,
                    size: 25,
                  ),
                ),
                Gap(AppLayout.getHeight(10)),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    FluentIcons.share_24_regular,
                    color: Styles.primaryColor,
                    size: 25,
                  ),
                ),
                const Spacer(),
                Text(
                  '$numberOfLikes likes',
                  style: Styles.headLineSmall.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Styles.textColor,
                  ),
                ),
                Gap(AppLayout.getHeight(10)),
                Text(
                  '$numberOfComments comments',
                  style: Styles.headLineSmall.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Styles.textColor,
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
