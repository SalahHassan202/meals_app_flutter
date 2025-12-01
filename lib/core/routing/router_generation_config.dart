import 'package:go_router/go_router.dart';
import 'package:meals_app/core/routing/app_routes.dart';
import 'package:meals_app/features/add_meal_screen/add_meal_screen.dart';
import 'package:meals_app/features/home_screen/data/models/meal_model.dart';
import 'package:meals_app/features/home_screen/home_screen.dart';
import 'package:meals_app/features/meal_details_screen/meal_details_screen.dart';
import 'package:meals_app/features/on_boardong_Screen/on_boarding_screen.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoardingScreen,
    routes: [
      GoRoute(
        name: AppRoutes.onBoardingScreen,
        path: AppRoutes.onBoardingScreen,
        builder: (context, state) => const OnBoardingScreen(),
      ),

      GoRoute(
        name: AppRoutes.homeScreen,
        path: AppRoutes.homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.addMeal,
        name: AppRoutes.addMeal,
        builder: (context, state) => const AddMealScreen(),
      ),
      GoRoute(
        path: AppRoutes.mealDetailsScreen,
        name: AppRoutes.mealDetailsScreen,
        builder: (context, state) {
          Meal meal = state.extra as Meal;
          return MealDetailsScreen(meal: meal);
        },
      ),
    ],
  );
}
