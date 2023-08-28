import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:jago_clone/shared/theme/theme_config.dart';

ThemeData getDefaultTheme() {
  return ThemeData().copyWith(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      elevation: 0.6,
      titleTextStyle: GoogleFonts.inter(
        color: Colors.blueGrey[900],
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.blueGrey[900],
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: Colors.grey,
      selectedItemColor: primaryColor,
    ),
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: Colors.grey,
      labelColor: Colors.blueGrey[900]!,
    ),
    textTheme: TextTheme(
      titleSmall: GoogleFonts.inter(
        color: Colors.blueGrey[900],
      ),
      titleMedium: GoogleFonts.inter(
        color: Colors.blueGrey[900],
      ),
      titleLarge: GoogleFonts.inter(
        color: Colors.blueGrey[900],
      ),
      bodyLarge: GoogleFonts.inter(
        color: Colors.blueGrey[900],
      ),
      bodySmall: GoogleFonts.inter(
        color: Colors.blueGrey[900],
      ),
      bodyMedium: GoogleFonts.inter(
        color: Colors.blueGrey[900],
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hoverColor: Colors.transparent,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: Colors.grey[300]!,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(
          color: Colors.transparent,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(
          color: Colors.red,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: Colors.grey[300]!,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: primaryColor,
        ),
      ),
      filled: true,
      fillColor: const Color(0xfffbfbfb),
    ),
  );
}
