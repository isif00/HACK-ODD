import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hack_odd/utils/app_layout.dart';
import 'package:hack_odd/utils/app_style.dart';
import 'package:hack_odd/widgets/main_button.dart';
import 'package:intl/intl.dart';

class EventCard extends StatelessWidget {
  const EventCard(
      {super.key,
      required this.eventTitle,
      required this.eventDescription,
      required this.eventParticipants,
      required this.eventDate,
      required this.eventLocation});
  final String eventTitle;
  final String eventDescription;
  final int eventParticipants;
  final DateTime eventDate;
  final String eventLocation;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: AppLayout.getHeight(15),
            horizontal: AppLayout.getHeight(20)),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: AppLayout.getHeight(90),
                  height: AppLayout.getHeight(80),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                          'assets/image.png'), // Replace with your image asset path
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Gap(
                  AppLayout.getHeight(16),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Event",
                            style: Styles.headLineSmall.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Styles.primaryColor,
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.arrow_drop_down_circle_outlined,
                              color: Styles.primaryColor,
                              size: AppLayout.getHeight(20),
                            ),
                          ),
                          const Gap(5),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.archive_sharp,
                              color: Styles.primaryColor,
                              size: AppLayout.getHeight(20),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        eventTitle,
                        style: Styles.headLineSmall.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Styles.titleColor,
                        ),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      Text(
                        '${eventDescription.substring(0, 40)}...',
                        style: Styles.headLineSmall.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Styles.titleColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Gap(
              AppLayout.getWidth(20),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '$eventParticipants',
                        style: Styles.headLineSmall.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Styles.titleColor,
                        ),
                      ),
                      Text(
                        "Participant",
                        style: Styles.headLineSmall.copyWith(
                          fontSize: 12,
                          color: Styles.disabledColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: AppLayout.getWidth(4)),
                    width: 1,
                    height: 25,
                    color: Styles.textColor,
                  ),
                  Column(
                    children: [
                      Text(
                        '${eventDate.day} ${DateFormat('MMMM').format(eventDate)}',
                        style: Styles.headLineSmall.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Styles.titleColor,
                        ),
                      ),
                      Text(
                        "Date",
                        style: Styles.headLineSmall.copyWith(
                          fontSize: 12,
                          color: Styles.disabledColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: AppLayout.getWidth(4)),
                    width: AppLayout.getWidth(1),
                    height: AppLayout.getHeight(25),
                    color: Styles.textColor,
                  ),
                  Column(
                    children: [
                      Text(
                        eventLocation,
                        style: Styles.headLineSmall.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Styles.titleColor,
                        ),
                      ),
                      Text(
                        "Location",
                        style: Styles.headLineSmall.copyWith(
                          fontSize: 12,
                          color: Styles.disabledColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Gap(AppLayout.getHeight(15)),
            //Button
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(10),
              ),
              child: const MainButton(
                buttonText: "More Details",
                icon: Icons.arrow_forward_ios_rounded,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
