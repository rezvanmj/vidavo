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
    fontSize: 40.0.sp,
  );

  static TextStyle displayMedium = TextStyle(
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.5,
    fontSize: 30.0.sp,
  );

  static TextStyle displaySmall = TextStyle(
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
    fontSize: 24.0.sp,
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

    fontSize: 30.0.sp,
  );

  static TextStyle titleLarge = TextStyle(
    //title large sat from figma
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,

    fontSize: 20.0.sp,
  );

  static TextStyle titleMedium = TextStyle(
    //title medium sat from figma
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,

    fontSize: 16.0.sp,
  );

  static TextStyle titleSmall = TextStyle(
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.normal,
    fontSize: 14.0.sp,
  );

  static TextStyle bodyLarge = TextStyle(
    fontFamily: AppValues.poppinsFont,
    fontWeight: FontWeight.w700,
    color: AppColors.textColor,

    fontStyle: FontStyle.normal,
    fontSize: 16.0.sp,
  );

  static TextStyle bodyMedium = TextStyle(
    // body medium sat from figma
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,

    fontSize: 13.0.sp,
  );

  static TextStyle labelLarge = TextStyle(
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,

    fontSize: 18.0.sp,
  );

  static TextStyle bodySmall = TextStyle(
    //
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 12.0.sp,
  );

  static TextStyle labelSmall = TextStyle(
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 10.0.sp,
  );

  static TextStyle header = TextStyle(
    fontFamily: AppValues.poppinsFont,
    color: AppColors.textColor,
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.normal,
    fontSize: 22.0.sp,
  );
}
