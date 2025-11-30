import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/styles/app_assets.dart';
import 'package:meals_app/core/styles/app_colors.dart';
import 'package:meals_app/core/styles/app_text_style.dart';

class CustomTopHomePartWidget extends StatelessWidget {
  const CustomTopHomePartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppAssets.topPicHomeScreen,
          width: double.infinity,
          height: 300.h,
          fit: BoxFit.fill,
        ),
        Positioned(
          left: 15.w,
          top: 30.h,
          bottom: 30.h,
          child: Opacity(
            opacity: 0.1,
            child: Container(
              width: 186.w,
              height: 180.h,
              padding: EdgeInsets.all(8.sp),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(48),
              ),
              alignment: Alignment.center,
              child: Text(
                "Welcome Add A New Recipe",
                textAlign: TextAlign.left,
                style: AppTextStyle.onBoardingPrimaryStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
