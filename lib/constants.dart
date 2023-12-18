import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle mediumText({required double fontSize, FontWeight fontWeight = FontWeight.normal}) {
  return GoogleFonts.lora(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: Colors.black,
      decoration: TextDecoration.none);
}
TextStyle mediumTextGrey({required double fontSize, double height =  1.2}) {
  return GoogleFonts.lora(
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
      color: Colors.grey[600],
      decoration: TextDecoration.none,
      height: height
      );
}

String noahStory = """
The story of Noah is found in the Book of Genesis. God, observing the wickedness of humanity, decided to flood the earth to cleanse it. He chose Noah, a righteous man, to build an ark and save himself, his family, and pairs of each animal species. Noah followed God's instructions meticulously, and when the flood came, they were kept safe in the ark. After the waters receded, a rainbow appeared as a symbol of God's covenant to never flood the earth again. Noah's story exemplifies faith, obedience, and God's mercy.
""";
