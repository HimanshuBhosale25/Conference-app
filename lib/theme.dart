import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color navyBlue = Color(0xFF1C3F6E);
  static const Color cardBlue = Color(0xFFD6E8F5);
  static const Color white = Colors.white;
  static const Color darkText = Color(0xFF1C1C1C);
  static const Color greyText = Color(0xFF888888);

  static TextStyle get heading => GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold, color: darkText);
  static TextStyle get subheading => GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, color: darkText);
  static TextStyle get body => GoogleFonts.poppins(fontSize: 12, color: darkText);
  static TextStyle get caption => GoogleFonts.poppins(fontSize: 11, color: greyText);
  static TextStyle get buttonText => GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w600, color: white);
  static TextStyle get welcomeText => GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold, color: white);

  static BoxDecoration get cardDecoration => BoxDecoration(
        color: cardBlue,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.red.shade300, width: 1.2),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.07), blurRadius: 8, offset: const Offset(0, 3))],
      );

  static BoxDecoration get plainCardDecoration => BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 10, offset: const Offset(0, 4))],
      );

  static ButtonStyle get primaryButton => ElevatedButton.styleFrom(
        backgroundColor: navyBlue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
        elevation: 2,
      );

  static ThemeData get themeData => ThemeData(
        primaryColor: navyBlue,
        scaffoldBackgroundColor: const Color(0xFFF4F6FA),
        textTheme: GoogleFonts.poppinsTextTheme(),
        elevatedButtonTheme: ElevatedButtonThemeData(style: primaryButton),
      );
}
