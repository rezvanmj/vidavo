import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vidavo/core/constants/app_values.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/app_space.dart';
import '../../../../core/widgets/app_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AppSpace(height: 69.h),
          Text(AppStrings.welcome, style: _theme(context).textTheme.titleLarge),
          AppSpace(height: 14.h),
          Text(
            AppStrings.loginText,
            style: _theme(context).textTheme.titleMedium?.copyWith(
              color: _theme(context).colorScheme.outline,
            ),
          ),
          AppSpace(height: 44.h),
          AppTextField(
            label: AppStrings.username,
            hint: AppStrings.usernameHint,
            controller: TextEditingController(),
          ),
          AppSpace(height: 30.h),
          AppTextField(
            label: AppStrings.password,
            hint: AppStrings.passwordHint,
            controller: TextEditingController(),
          ),

          AppSpace(height: 42.h),
          SizedBox(
            width: AppValues.fullWidget(context),
            child: ElevatedButton(
              style: ButtonStyle(
                padding: WidgetStateProperty.all(
                  EdgeInsets.symmetric(vertical: 10.h),
                ),
              ),
              onPressed: () {},
              child: Text(AppStrings.signIn),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                AppStrings.forgetPass,
                style: _theme(context).textTheme.bodySmall?.copyWith(
                  color: _theme(context).colorScheme.shadow,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ThemeData _theme(BuildContext context) => Theme.of(context);
}
