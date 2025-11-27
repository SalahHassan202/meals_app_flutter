import 'package:go_router/go_router.dart';
import 'package:meals_app/core/routing/app_routes.dart';
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
    ],
  );
}
