import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  // colors
  static Color primaryColor = const Color(0xFF3FAC9C);
  static Color titleColor = const Color(0xFF254E48);
  static Color textColor = const Color(0xFF545454);

  //Text Styles
  static TextStyle headLine1 = GoogleFonts.inter(
    fontSize: 32,
    fontWeight: FontWeight.w800,
    color: titleColor,
  );

  static TextStyle headLineSmall = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: titleColor,
  );
}
