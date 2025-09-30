import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vidavo/core/constants/app_dimensions.dart';
import 'package:vidavo/core/constants/app_images.dart';
import 'package:vidavo/core/constants/app_values.dart';
import 'package:vidavo/core/widgets/app_margin.dart';

import '../../../../core/constants/app_strings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      body: Column(
        children: [
          Expanded(flex: 2, child: _logo()),
          Expanded(flex: 4, child: _loginContent(context)),
        ],
      ),
    );
  }

  Widget _loginContent(BuildContext context) {
    return Container(
      width: AppValues.fullWidget(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppDimensions.cardRadius),
        ),
        color: Theme.of(context).cardColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0.w),
        child: Column(
          children: [
            AppSpace(height: 69.h),
            Text(
              AppStrings.welcome,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            AppSpace(height: 14.h),
            Text(
              AppStrings.loginText,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).colorScheme.outline,
              ),
            ),
            AppSpace(height: 44.h),
            TextFormField(),
            AppSpace(height: 30.h),
            TextFormField(),
            AppSpace(height: 42.h),
            ElevatedButton(onPressed: () {}, child: Text(AppStrings.signIn)),
          ],
        ),
      ),
    );
  }

  Widget _logo() {
    return Center(
      child: Image.asset(AppImages.logoPng, height: 58.h, width: 137.w),
    );
  }
}
