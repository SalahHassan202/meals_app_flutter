import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/styles/app_colors.dart';

class PrimayButtonWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final String? buttonText;
  final Color? buttonColor;
  final double? fontSize;
  final double? borderRadius;
  final Color? textColor;
  final void Function()? onPress;
  const PrimayButtonWidget({
    super.key,
    this.width,
    this.height,
    this.buttonText,
    this.buttonColor,
    this.fontSize,
    this.borderRadius,
    this.textColor,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor ?? AppColors.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.r),
        ),
        fixedSize: Size(width ?? 331.w, height ?? 56.h),
      ),
      child: Text(
        buttonText ?? " ",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: fontSize ?? 14.sp,
          color: textColor ?? AppColors.primaryColor,
        ),
      ),
    );
  }
}
