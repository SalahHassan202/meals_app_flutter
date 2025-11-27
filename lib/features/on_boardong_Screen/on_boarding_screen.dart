import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/styles/app_assets.dart';
import 'package:meals_app/core/styles/app_colors.dart';
import 'package:meals_app/core/styles/app_text_style.dart';
import 'package:meals_app/core/widgets/spacing_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<String> titles = [
    "Save Your Meals Ingredient",
    "Use Our App The Best Choice",
    "Our App Your Ultimate Choice",
  ];

  List<String> descriptions = [
    "Add Your Meals and its Ingredients and we will save it for you",
    "The best choice for your kitchen, do not hesitate",
    "All the best restaurants and their top menus are ready for you",
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// background image
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

          /// bottom card
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
                child: Padding(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// ---------- CAROUSEL ----------
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 230.h,
                          viewportFraction: 0.95,
                          enlargeCenterPage: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                        items: List.generate(titles.length, (index) {
                          return Builder(
                            builder: (BuildContext context) {
                              return SizedBox(
                                width: 200.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      titles[index],
                                      textAlign: TextAlign.center,
                                      style:
                                          AppTextStyle.onBoardingPrimaryStyle,
                                    ),
                                    HightSpace(8),
                                    Text(
                                      descriptions[index],
                                      textAlign: TextAlign.center,
                                      style:
                                          AppTextStyle.onBoardingSubTitleStyle,
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }),
                      ),

                      HightSpace(20),
                      DotsIndicator(
                        dotsCount: titles.length,
                        position: currentIndex.toDouble(),
                        decorator: DotsDecorator(
                          size: const Size(24, 6),
                          activeSize: const Size(24, 6),
                          color: const Color(0xffC2C2C2),
                          activeColor: AppColors.whiteColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
