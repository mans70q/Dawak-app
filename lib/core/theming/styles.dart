import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';

class Styles {
  static TextStyle font12BlueBold = TextStyle(
    fontSize: 12.sp,
    color: ColorManager.primaryBlue,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font12WhiteRegular = TextStyle(
    fontSize: 12.sp,
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font12BlackRegular = TextStyle(
    //TODO: قصدك 12 ولا  14 ؟
    fontSize: 14.sp,
    color: Colors.black,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font14greyRegular = TextStyle(
    fontSize: 14.sp,
    color: Color(0XFF484848),
    fontWeight: FontWeight.w400,
  );
  static TextStyle font14BlueSemiBold = TextStyle(
    fontSize: 14.sp,
    color: ColorManager.primaryBlue,
    fontWeight: FontWeight.w600,
  );
  static TextStyle font16GreyRegular = TextStyle(
    fontSize: 16.sp,
    color: ColorManager.grey,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font16WhiteMedium = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
  static TextStyle font16BlackSemiBold = TextStyle(
    fontSize: 16.sp,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
  static TextStyle font18BlackSemiBold = TextStyle(
    fontSize: 18.sp,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
  static TextStyle font20WhiteSemiBold = TextStyle(
    fontSize: 20.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  static TextStyle font24WhiteMedium = TextStyle(
    fontSize: 24.sp,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
  static TextStyle font28BlackSemiBold = TextStyle(
    fontSize: 28.sp,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
  static TextStyle font28WhiteBold = TextStyle(
    fontSize: 28.sp,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );
}
