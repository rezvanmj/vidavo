import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'app_values.dart';

class AppStyles {
  AppStyles._();

  static TextStyle displayLarge = TextStyle(
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.5,
    fontSize: 60.0.sp,
  );

  static TextStyle displayMedium = TextStyle(
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.5,
    fontSize: 60.0.sp,
  );

  static TextStyle displaySmall = TextStyle(
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
    fontSize: 34.0.sp,
  );

  static TextStyle headlineMedium = TextStyle(
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    // letterSpacing: 0.25,
    fontSize: 28.0.sp,
  );

  static TextStyle headlineSmall = TextStyle(
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
    fontSize: 19.0.sp,
  );

  static TextStyle headlineLarge = TextStyle(
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    // letterSpacing: 0.0,
    fontSize: 40.0.sp,
  );

  static TextStyle titleLarge = TextStyle(
    //dn
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    // letterSpacing: 0.15,
    fontSize: 20.0.sp,
  );

  static TextStyle titleMedium = TextStyle(
    //dn
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    // letterSpacing: 0.15,
    fontSize: 16.0.sp,
  );

  static TextStyle titleSmall = TextStyle(
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.normal,
    // letterSpacing: 0.5,
    fontSize: 14.0.sp,
  );

  static TextStyle bodyLarge = TextStyle(
    fontFamily: AppValues.poppinsFont,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontSize: 16.0.sp,
  );

  static TextStyle bodyMedium = TextStyle(
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.normal,
    // letterSpacing: 0.5,
    fontSize: 13.0.sp,
  );

  static TextStyle labelLarge = TextStyle(
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,

    // letterSpacing: 0.5,
    fontSize: 18.0.sp,
  );

  static TextStyle bodySmall = TextStyle(
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.normal,
    // letterSpacing: 0.4,
    fontSize: 12.0.sp,
  );

  static TextStyle labelSmall = TextStyle(
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    // letterSpacing: 0.5,
    fontSize: 10.0.sp,
  );

  static TextStyle header = TextStyle(
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.normal,
    // letterSpacing: 0.5,
    fontSize: 22.0.sp,
  );
}
