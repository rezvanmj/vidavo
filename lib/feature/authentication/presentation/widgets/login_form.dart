import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/app_margin.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
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
          TextFormField(
            decoration: InputDecoration(label: Text(AppStrings.username)),
          ),
          AppSpace(height: 30.h),
          TextFormField(
            decoration: InputDecoration(label: Text(AppStrings.password)),
          ),
          AppSpace(height: 42.h),
          ElevatedButton(onPressed: () {}, child: Text(AppStrings.signIn)),
        ],
      ),
    );
  }
}
