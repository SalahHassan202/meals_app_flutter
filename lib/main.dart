import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/routing/router_generation_config.dart';
import 'package:meals_app/features/on_boardong_Screen/on_boarding_services/on_boarding_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await OnBoardingServices.initaializeSharedPref();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: "Meals App",
          routerConfig: RouterGenerationConfig.goRouter,
        );
      },
    );
  }
}
