import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';

class OnboardingPage extends StatelessWidget {
  final int pageIndex;
  final int currentPage;

  const OnboardingPage({
    super.key,
    required this.pageIndex,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      Assets.onboardingImg1,
      Assets.onboardingImg2,
      Assets.onboardingImg3,
    ];
    final List<String> titles = [
      'Welcome to Dawak',
      'Snap & Recognize',
      'Stay Safe',
    ];
    final List<String> subtitles = [
      'Your AI-powered assistant for safe and simple medication management',
      'Instantly detect your medicines with just one photo',
      'Dawak warns you about dangerous drug interactions before it\'s too late',
    ];

    final isActive = pageIndex == currentPage;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(images[pageIndex]),
        SizedBox(height: 13.h),

        // Title with fade + slide animation
        AnimatedSlide(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOut,
          offset: isActive ? Offset.zero : const Offset(0, 0.2),
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 400),
            opacity: isActive ? 1 : 0,
            child: Text(
              titles[pageIndex],
              style: Styles.font28BlackSemiBold,
              textAlign: TextAlign.center,
            ),
          ),
        ),

        SizedBox(height: 16.h),

        // Subtitle with fade + slide animation
        AnimatedSlide(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeOut,
          offset: isActive ? Offset.zero : const Offset(0, 0.2),
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            opacity: isActive ? 1 : 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                subtitles[pageIndex],
                style: Styles.font16GreyRegular,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
