import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hack_odd/widgets/birthday_field.dart';
import 'package:hack_odd/widgets/pronouns_dropdown.dart';
import 'package:hack_odd/widgets/text_input.dart';
import 'package:hack_odd/widgets/main_button.dart';
import 'package:hack_odd/widgets/steps.dart';

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
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: const Column(
          children: [
            Row(
              children: [
                //pronouns DropDown
                PronounsDropDown(),
                Gap(10),
                // First Name
                Expanded(child: TextInput(hintText: 'First Name')),
              ],
            ),
            Gap(10),
            // Last Name
            TextInput(hintText: 'Last Name'),
            Gap(10),
            //DOB Field
            DobInputField(),
            Gap(10),
            // continue Button
            MainButton(buttonText: 'Continue'),
            Gap(10),
            // Stepper
            Steps(currentStep: 3, totalSteps: 4),
            Gap(10),
            // Search Bar
            SearchBar(),
          ],
        ),
      ),
    );
  }
}
