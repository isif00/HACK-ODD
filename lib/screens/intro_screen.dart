import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hack_odd/utils/app_layout.dart';
import 'package:hack_odd/widgets/birthday_field.dart';
import 'package:hack_odd/widgets/event_card.dart';
import 'package:hack_odd/widgets/filter_button.dart';
import 'package:hack_odd/widgets/pronouns_dropdown.dart';
import 'package:hack_odd/widgets/search_bar.dart';
import 'package:hack_odd/widgets/stars_stepper.dart';
import 'package:hack_odd/widgets/text_input.dart';
import 'package:hack_odd/widgets/main_button.dart';
import 'package:hack_odd/widgets/pages_steps.dart';
import 'package:hack_odd/widgets/underline.dart';
import 'package:hack_odd/widgets/user_card.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // User icon
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
          Gap(AppLayout.getWidth(8)),

          // Search Bar
          Expanded(
            child: AppBarSearch(
              filterSearchResults: (value) {},
            ),
          ),
          Gap(AppLayout.getWidth(8)),

          // Notification Icon
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.domain_verification),
          ),
        ],
      ),
      body: Column(
        children: [
          const Underline(),
          Expanded(
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          //pronouns DropDown
                          PronounsDropDown(),
                          Gap(10),
                          // First Name
                          Expanded(child: TextInput(hintText: 'First Name')),
                        ],
                      ),
                      const Gap(10),
                      // Last Name
                      const TextInput(hintText: 'Last Name'),
                      const Gap(10),
                      //DOB Field
                      const DobInputField(),
                      const Gap(10),
                      // continue Button
                      const MainButton(buttonText: 'Continue'),
                      const Gap(10),
                      // Stepper
                      const PagesStepper(
                        currentStep: 3,
                        totalSteps: 4,
                      ),
                      const Gap(10),

                      // UserCard
                      const UserCard(
                        profession: 'Volunteer',
                        professionDescription: 'join and make difference',
                      ),
                      const Gap(10),

                      // EventCard
                      EventCard(
                        eventDate: DateTime.now(),
                        eventTitle: 'Planet CleanUp',
                        eventDescription:
                            'this is the best event u will ever attend so make sure to join and to not miss anythin',
                        eventLocation: "Algeria",
                        eventParticipants: 15,
                      ),
                      const Gap(10),
                      //filter Button
                      const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            FilterButton(filterField: 'Community'),
                            FilterButton(filterField: 'Clubs'),
                            FilterButton(filterField: 'Goverment'),
                            FilterButton(filterField: 'organizations')
                          ],
                        ),
                      ),
                      const Gap(10),
                      //Stars stepper
                      const StarsStepper(totalSteps: 5)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
