import 'package:flutter/material.dart';
import 'package:newsapp_demo/core/constants/proj_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes{
  AppThemes._();
  static final light=ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ProjColors.lightprimaryColor),
        useMaterial3: true,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

      static final dark=ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:  ProjColors.darkprimaryColor),
        useMaterial3: true,
        fontFamily: GoogleFonts.poppins().fontFamily,
      );
  
}