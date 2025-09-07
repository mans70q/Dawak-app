import 'package:go_router/go_router.dart';
import 'package:spark_flutter_app/features/onboarding/ui/onboarding_screen.dart';

abstract class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        // path: Routes.onboardingScreen,
        path: '/', // for testing purposes
        builder: (context, state) => const OnboardingScreen(),
      ),
    ],
  );
}
