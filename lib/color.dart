import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static const primaryColor = Color(0xffF42649);
  static const textGrey = Color(0xff777777);
  static const strokeColor = Color(0xffb5b5b5);
  static const violetColor = Color(0xff5C4DB1);
  static const greenColor = Color(0xff389308);
  static const yellowColor = Color(0xffE0C21D);
  static const blueColor = Color(0xff1b85e0);

  static textOne() =>
      GoogleFonts.openSans(fontSize: 14, color: const Color(0xff696969));

  static textTwo() =>
      GoogleFonts.montserrat(fontSize: 12, color: const Color(0xff696969));

  static headlineOne() => GoogleFonts.openSans(
      fontSize: 16, color: primaryColor, fontWeight: FontWeight.bold);

  static headlineTwo() => GoogleFonts.openSans(
      fontSize: 16,
      color: const Color(0xff7F7F7F),
      fontWeight: FontWeight.bold);
}
