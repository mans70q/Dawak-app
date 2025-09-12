import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spark_flutter_app/core/di/dependency_injection.dart';
import 'package:spark_flutter_app/core/helpers/auth_manager.dart';
import 'package:spark_flutter_app/core/helpers/constants.dart';
import 'package:spark_flutter_app/core/helpers/shared_pref_helper.dart';
import 'package:spark_flutter_app/core/routing/routes.dart';
import 'package:spark_flutter_app/features/auth/logic/login%20cubit/login_cubit.dart';
import 'package:spark_flutter_app/features/auth/logic/register%20cubit/register_cubit.dart';
import 'package:spark_flutter_app/features/auth/ui/forget_pass_view.dart';
import 'package:spark_flutter_app/features/auth/ui/login_view.dart';
import 'package:spark_flutter_app/features/auth/ui/register_view.dart';
import 'package:spark_flutter_app/features/auth/ui/reset_password_view.dart';
import 'package:spark_flutter_app/features/auth/ui/verification_view.dart';
import 'package:spark_flutter_app/features/home/ui/warning_screen.dart';
import 'package:spark_flutter_app/features/main/logic/main_navigation_cubit.dart';
import 'package:spark_flutter_app/features/main/ui/main_screen.dart';
import 'package:spark_flutter_app/features/onboarding/ui/onboarding_screen.dart';

abstract class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    redirect: (context, state) async {
      final isOnboardingComplete =
          await SharedPrefHelper.getBool(SharedPrefKeys.isOnboardingComplete) ??
          false;
      final isUserLoggedIn = AuthManager.isUserLoggedIn;

      final currentLocation = state.uri.toString();

      if (currentLocation == '/') {
        if (!isOnboardingComplete) return Routes.onboardingScreen;
        if (isUserLoggedIn) return Routes.mainScreen;
        return Routes.loginScreen;
      }
      return null;
    },
    routes: [
      GoRoute(
        path: Routes.onboardingScreen,
        // path: '/',
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: Routes.mainScreen,
        builder:
            (context, state) => BlocProvider(
              create: (context) => MainNavigationCubit(),
              child: MainScreen(),
            ),
      ),
      GoRoute(
        path: Routes.loginScreen,
        builder:
            (context, state) => BlocProvider(
              create: (context) => LoginCubit(getIt()),
              child: const LoginView(),
            ),
      ),
      GoRoute(
        path: Routes.registerScreen,
        builder:
            (context, state) => BlocProvider(
              create: (context) => RegisterCubit(getIt()),
              child: const RegisterView(),
            ),
      ),
      GoRoute(
        path: Routes.forgotPasswordScreen,
        builder: (context, state) => const ForgetPassView(),
      ),
      GoRoute(
        path: Routes.verificationScreen,
        builder: (context, state) => const VerificationView(),
      ),
      GoRoute(
        path: Routes.resetPasswordScreen,
        builder: (context, state) => const ResetPasswordView(),
      ),
      GoRoute(
        path: Routes.warningScreen,
        builder: (context, state) => const WarningScreen(),
      ),
    ],
  );
}
