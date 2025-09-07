import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';

class OnboardingPage extends StatelessWidget {
  final int pageIndex;

  const OnboardingPage({super.key, required this.pageIndex});

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

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(images[pageIndex]),
        SizedBox(height: 13.h),
        Text(
          titles[pageIndex],
          style: Styles.font28BlackSemiBold,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            subtitles[pageIndex],
            style: Styles.font16GreyRegular,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
