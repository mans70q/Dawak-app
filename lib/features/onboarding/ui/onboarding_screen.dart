import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/features/onboarding/ui/widgets/onboarding_appbar.dart';
import 'package:spark_flutter_app/features/onboarding/ui/widgets/onboarding_page.dart';
import 'package:spark_flutter_app/features/onboarding/ui/widgets/onboarding_indicator.dart';
import 'package:spark_flutter_app/features/onboarding/ui/widgets/onboarding_footer_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [ColorManager.primaryBlue, Colors.white],
            stops: const [0.20, 0.85],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.h, right: 20.w, left: 20.w),
                child: OnboardingAppbar(
                  showBackButton: _currentPage > 0,
                  backButtonOnPressed: () {
                    _pageController.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
              ),
              SizedBox(height: 80.h),
              SizedBox(
                height: 480.h,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() => _currentPage = index);
                  },
                  itemCount: 3,
                  itemBuilder:
                      (_, index) => OnboardingPage(
                        pageIndex: index,
                        currentPage: _currentPage,
                      ),
                ),
              ),
              SizedBox(height: 40.h),
              OnboardingIndicator(controller: _pageController),
              SizedBox(height: 40.h),
              Hero(
                tag: 'auth-btn',
                child: OnboardingFooterButton(
                  currentPage: _currentPage,
                  pageController: _pageController,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
