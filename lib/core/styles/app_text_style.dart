import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/core/styles/app_colors.dart';

class AppTextStyle {
  static TextStyle onBoardingPrimaryStyle = GoogleFonts.inter(
    fontSize: 26.sp,
    fontWeight: FontWeight.w800,
    color: AppColors.whiteColor,
  );
  static TextStyle onBoardingSubTitleStyle = GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.whiteColor,
  );
  static TextStyle grey14Regular = GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: const Color(0xff878787),
  );
  static TextStyle black16Medium = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.blackColor,
  );
  static TextStyle white14SemiBold = GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.whiteColor,
  );
}
