import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/core/widgets/app_button.dart';

class OnboardingFooterButton extends StatelessWidget {
  final int currentPage;
  final PageController pageController;

  const OnboardingFooterButton({
    super.key,
    required this.currentPage,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 237.w,
      height: 52.h,
      child: AppButton(
        text: currentPage == 2 ? "Get Started" : "Next",
        textStyle: Styles.font20WhiteSemiBold,
        onPressed: () {
          if (currentPage < 2) {
            pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {
            // TODO: implement navigation to Home/Login
          }
        },
      ),
    );
  }
}
