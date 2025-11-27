import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/styles/app_assets.dart';
import 'package:meals_app/core/styles/app_colors.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<String> titles = [
    "Save Your Meals Ingredient",
    "Use Our App The Best Choice",
    " Our App Your Ultimate Choice",
  ];

  List<String> descriptions = [
    "Add Your Meals and its Ingredients and we will save it for you",
    "the best choice for your kitchen do not hesitate",
    " All the best restaurants and their top menus are ready for you",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.onBordingPics),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 16.w,
            left: 32.w,
            right: 32.w,
            child: Opacity(
              opacity: 0.9,
              child: Container(
                width: 311.w,
                height: 400.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(48.r),
                  color: AppColors.primaryColor,
                ),
                child: Column(children: [
      
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
