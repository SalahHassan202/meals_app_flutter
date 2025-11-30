import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/styles/app_colors.dart';
import 'package:meals_app/core/styles/app_text_style.dart';
import 'package:meals_app/core/widgets/spacing_widget.dart';

class FoodItemWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double rate;
  final String time;
  final Function()? onTap;
  const FoodItemWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.rate,
    required this.time,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 153.w,
        height: 176.h,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
              width: 137.w,
              height: 106.h,
              errorWidget: (context, url, error) =>
                  Icon(Icons.error, color: Colors.red),
            ),
            HightSpace(8),
            Text(name, maxLines: 1, style: AppTextStyle.black16Medium),
            HightSpace(4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: AppColors.primaryColor,
                      size: 16.sp,
                    ),
                    const WidthSpace(4),
                    Text(rate.toString(), style: AppTextStyle.black16Medium),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.lock_clock,
                      color: AppColors.primaryColor,
                      size: 16.sp,
                    ),
                    const WidthSpace(4),
                    Text(time, style: AppTextStyle.black16Medium),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
