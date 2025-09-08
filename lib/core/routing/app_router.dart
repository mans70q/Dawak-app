import 'package:go_router/go_router.dart';
import 'package:spark_flutter_app/core/routing/routes.dart';
import 'package:spark_flutter_app/features/auth/ui/forget_pass_view.dart';
import 'package:spark_flutter_app/features/auth/ui/login_view.dart';
import 'package:spark_flutter_app/features/auth/ui/register_view.dart';
import 'package:spark_flutter_app/features/auth/ui/verification_view.dart';
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
      GoRoute(
        path: Routes.loginScreen,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: Routes.registerScreen,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: Routes.forgotPasswordScreen,
        builder: (context, state) => const ForgetPassView(),
      ),
      GoRoute(
        path: Routes.verificationScreen,
        builder: (context, state) => const VerificationView(),
      ),
    ],
  );
}
