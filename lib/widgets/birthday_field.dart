import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/material.dart';
import 'package:hack_odd/utils/app_style.dart';

class DobInputField extends StatelessWidget {
  const DobInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DOBInputField(
      cursorColor: Styles.titleColor,
      inputDecoration: InputDecoration(
        counterText: "",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
      showLabel: true,
      showCursor: true,
      autovalidateMode: AutovalidateMode.always,
    );
  }
}
