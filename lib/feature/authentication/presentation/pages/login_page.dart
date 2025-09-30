import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vidavo/core/constants/app_dimensions.dart';
import 'package:vidavo/core/constants/app_images.dart';
import 'package:vidavo/core/constants/app_values.dart';

import '../widgets/login_form.dart';

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
        child: LoginForm(),
      ),
    );
  }

  Widget _logo() {
    return Center(
      child: Image.asset(AppImages.logoPng, height: 58.h, width: 137.w),
    );
  }
}
