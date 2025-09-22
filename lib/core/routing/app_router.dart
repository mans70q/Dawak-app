import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spark_flutter_app/core/di/dependency_injection.dart';
import 'package:spark_flutter_app/core/services/auth_manager.dart';
import 'package:spark_flutter_app/core/helpers/constants.dart';
import 'package:spark_flutter_app/core/helpers/shared_pref_helper.dart';
import 'package:spark_flutter_app/core/networking/api_service.dart';
import 'package:spark_flutter_app/core/routing/routes.dart';
import 'package:spark_flutter_app/features/auth/logic/login%20cubit/login_cubit.dart';
import 'package:spark_flutter_app/features/auth/logic/register%20cubit/register_cubit.dart';
import 'package:spark_flutter_app/features/auth/ui/forget_pass_view.dart';
import 'package:spark_flutter_app/features/auth/ui/login_view.dart';
import 'package:spark_flutter_app/features/auth/ui/register_view.dart';
import 'package:spark_flutter_app/features/auth/ui/reset_password_view.dart';
import 'package:spark_flutter_app/features/auth/ui/verification_view.dart';
import 'package:spark_flutter_app/features/family_mode/family_member_details_screen.dart';
import 'package:spark_flutter_app/features/family_mode/family_mode_screen.dart';
import 'package:spark_flutter_app/features/home/data/repos/warning_repo.dart';
import 'package:spark_flutter_app/features/home/logic/scan%20cubit/scan_cubit.dart';
import 'package:spark_flutter_app/features/home/logic/warning_cubit/warning_cubit.dart';
import 'package:spark_flutter_app/features/home/logic/warning_stats_cubit/warning_stats_cubit.dart';
import 'package:spark_flutter_app/features/home/ui/warning_screen.dart';
import 'package:spark_flutter_app/features/main/logic/main_navigation_cubit.dart';
import 'package:spark_flutter_app/features/home/logic/profile%20cubit/profile_cubit.dart';
import 'package:spark_flutter_app/features/main/ui/main_screen.dart';
import 'package:spark_flutter_app/features/medicines/data/models/add_medicine_args.dart';
import 'package:spark_flutter_app/features/medicines/logic/cubit/add_medicine_cubit.dart';
import 'package:spark_flutter_app/features/medicines/ui/add_medicine_screen.dart';
import 'package:spark_flutter_app/features/medicines/ui/medicine_details_screen.dart';
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
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: Routes.mainScreen,
        builder:
            (context, state) => MultiBlocProvider(
              providers: [
                BlocProvider(create: (context) => MainNavigationCubit()),
                BlocProvider(create: (context) => ProfileCubit(getIt())),
                BlocProvider(create: (context) => ScanCubit(getIt())),
                BlocProvider(
                  create:
                      (context) =>
                          WarningStatsCubit(WarningRepo(getIt<ApiService>())),
                ),
              ],
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
        builder:
            (context, state) => BlocProvider(
              create:
                  (context) => WarningCubit(WarningRepo(getIt<ApiService>())),
              child: const WarningScreen(),
            ),
      ),
      GoRoute(
        path: Routes.addMedicineScreen,
        builder: (context, state) {
          final args =
              state.extra is AddMedicineArgs
                  ? state.extra as AddMedicineArgs
                  : null;
          return BlocProvider(
            create: (context) => AddMedicineCubit(getIt()),
            child: AddMedicineScreen(
              scanResponse: args?.scanResponse,
              file: args?.file,
            ),
          );
        },
      ),

      GoRoute(
        path: Routes.medicinedetailsScreen,
        builder: (context, state) => const MedicineDetailsScreen(),
      ),
      GoRoute(
        path: Routes.faimlyModeScreen,
        builder: (context, state) => FamilyModeScreen(),
      ),
      GoRoute(
        path: Routes.familyMemberDetailsScreen,
        builder: (context, state) {
          final extra = state.extra as Map<String, String>;
          return FamilyMemberDetailsScreen(
            name: extra['name']!,
            relation: extra['relation']!,
            avatarPath: extra['avatarPath']!,
          );
        },
      ),
    ],
  );
}
