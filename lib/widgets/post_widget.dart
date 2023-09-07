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
              padding: EdgeInsets.symmetric(horizontal: 5),
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
                            Icons.monetization_on_outlined,
                            color: Styles.primaryColor,
                            size: 22,
                          ),
                        ),
                        Gap(AppLayout.getWidth(5)),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.bookmark_border,
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
            Gap(AppLayout.getHeight(25)),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.heart_broken_outlined,
                    color: Styles.primaryColor,
                    size: 30,
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.chat_bubble_outline_rounded,
                    color: Styles.primaryColor,
                    size: 30,
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.send,
                    color: Styles.primaryColor,
                    size: 30,
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
