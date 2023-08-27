import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:hack_odd/widgets/text_input.dart';
import 'package:hack_odd/widgets/main_button.dart';

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
            // First Name
            TextInput(hintText: 'First Name'),
            Gap(10),
            // Last Name
            TextInput(hintText: 'Last Name'),
            Gap(10),
            // continue Button
            MainButton(buttonText: 'Continue'),
          ],
        ),
      ),
    );
  }
}
