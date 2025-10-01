import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vidavo/core/constants/app_values.dart';
import 'package:vidavo/core/utils/app_utils.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/app_space.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../main/presentation/pages/main_page.dart';

class LoginForm extends StatelessWidget {
  LoginForm({
    super.key,
    required this.formKey,
    required this.passController,
    required this.usernameController,
  });
  final GlobalKey<FormState> formKey;
  TextEditingController passController;
  TextEditingController usernameController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          AppSpace(height: 69.h),
          Text(
            AppStrings.welcome,
            style: Theme.of(context).textTheme.titleLarge,
          ),
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
                if (value.length < 4) {
                  return AppStrings.passHint;
                }
              }
              return null;
            },
            controller: passController,
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
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
        color: Theme.of(context).colorScheme.outline,
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
          if (formKey.currentState?.validate() ?? false) {
            if (usernameController.text == 'vidavo' &&
                passController.text == '1234') {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            } else {
              AppUtils.showMessage(
                message: 'Invalid username or Password',
                context: context,
                isShowingError: true,
              );
            }
          }
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
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Theme.of(context).colorScheme.shadow,
          ),
        ),
      ),
    );
  }
}
