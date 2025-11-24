import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/core/styles/app_colors.dart';

class AppTextStyle {
  static TextStyle onBoardingPrimaryStyle = GoogleFonts.inter(
    fontSize: 32,
    fontWeight: FontWeight.w800,
    color: AppColors.whiteColor,
  );
  static TextStyle onBoardingSubTitleStyle = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.whiteColor,
  );
  static TextStyle grey14Regular = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: const Color(0xff878787),
  );
  static TextStyle black16Medium = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.blackColor,
  );
}
