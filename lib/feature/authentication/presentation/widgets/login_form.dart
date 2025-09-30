import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vidavo/core/constants/app_values.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/app_space.dart';
import '../../../../core/widgets/app_text_field.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          AppSpace(height: 69.h),
          Text(AppStrings.welcome, style: _theme(context).textTheme.titleLarge),
          AppSpace(height: 14.h),
          _loginText(context),
          AppSpace(height: 44.h),
          AppTextField(
            label: AppStrings.username,
            hint: AppStrings.usernameHint,
            validator: (value) {
              if (value != null) {
                if (value.isEmpty) {
                  return AppStrings.requiredField;
                }
              }
              return null;
            },
            controller: usernameController,
          ),
          AppSpace(height: 30.h),
          AppTextField(
            label: AppStrings.password,
            hint: AppStrings.passwordHint,
            validator: (value) {
              if (value != null) {
                if (value.length < 8 ?? true) {
                  return AppStrings.passHint;
                }
              }
              return null;
            },
            controller: passwordController,
          ),

          AppSpace(height: 42.h),
          _signInBtn(context),
          _forgetPass(context),
        ],
      ),
    );
  }

  Widget _loginText(BuildContext context) {
    return Text(
      AppStrings.loginText,
      style: _theme(context).textTheme.titleMedium?.copyWith(
        color: _theme(context).colorScheme.outline,
      ),
    );
  }

  Widget _signInBtn(BuildContext context) {
    return SizedBox(
      width: AppValues.fullWidget(context),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: WidgetStateProperty.all(
            EdgeInsets.symmetric(vertical: 10.h),
          ),
        ),
        onPressed: () {
          if (formKey.currentState?.validate() ?? false) {}
        },
        child: Text(AppStrings.signIn),
      ),
    );
  }

  Widget _forgetPass(BuildContext context) {
    return Align(
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
    );
  }

  ThemeData _theme(BuildContext context) => Theme.of(context);
}
