import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/styles/app_text_style.dart';
import 'package:meals_app/core/widgets/spacing_widget.dart';
import 'package:meals_app/features/home_screen/widgets/custom_food_item_widget.dart';
import 'package:meals_app/features/home_screen/widgets/custom_top_home_part.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomTopHomePartWidget(),
            HightSpace(16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.sp),
                  child: Text(
                    "Your Food",
                    style: AppTextStyle.black16Medium,
                    textAlign: TextAlign.start,
                  ),
                ),
                HightSpace(24),
                FoodItemWidget(
                  imageUrl:
                      'https://pngtree.com/freepng/delicious-and-testy-cheese-burger_16763714.html',
                  name: 'burger',
                  rate: 4.5,
                  time: '20/40',
                  onTap: () {},
                ),
                FoodItemWidget(
                  imageUrl:
                      'https://pngtree.com/freepng/delicious-and-testy-cheese-burger_16763714.html',
                  name: 'burger',
                  rate: 4.5,
                  time: '20/40',
                  onTap: () {},
                ),
                FoodItemWidget(
                  imageUrl:
                      'https://pngtree.com/freepng/delicious-and-testy-cheese-burger_16763714.html',
                  name: 'burger',
                  rate: 4.5,
                  time: '20/40',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
