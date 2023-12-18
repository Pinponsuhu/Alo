import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle mediumText(double fontSize) {
  return GoogleFonts.lora(
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
      color: Colors.black,
      decoration: TextDecoration.none);
}
TextStyle mediumTextGrey(double fontSize) {
  return GoogleFonts.lora(
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
      color: Colors.grey[600],
      decoration: TextDecoration.none
      );
}
