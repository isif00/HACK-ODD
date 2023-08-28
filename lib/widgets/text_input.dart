import 'package:flutter/material.dart';
import 'package:hack_odd/utils/app_style.dart';

class TextInput extends StatefulWidget {
  const TextInput({super.key, required this.hintText});
  final String hintText;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Styles.headLineSmall.copyWith(fontWeight: FontWeight.w800),
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Styles.titleColor, width: 2.5),
            borderRadius: BorderRadius.circular(8.0)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Styles.disabledColor, width: 2.0),
            borderRadius: BorderRadius.circular(8.0)),
        hintText: widget.hintText,
      ),
    );
  }
}
