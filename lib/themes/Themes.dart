import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static ThemeData lightTheme(BuildContext context) =>
      ThemeData(fontFamily: GoogleFonts.poppins().fontFamily);
  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
