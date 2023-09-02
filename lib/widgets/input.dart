import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;

    // Calculate dimensions based on screen size
    double inputWidth = screenWidth * 0.90;

    return Container(
      width: inputWidth,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Color(0x9C254E48),
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin:
          EdgeInsets.symmetric(horizontal: 16), // Adjust the margin as needed
      child: const TextField(
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 16,
          fontFamily: "Inter", // Replace with your font
          fontWeight: FontWeight.w400,
          color: Color(0xFF545454),
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              horizontal: 16), // Adjust the padding as needed
          hintText: "Last Name",
          border: InputBorder.none, // Remove the default border
        ),
      ),
    );
  }
}
