import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vidavo/core/constants/app_dimensions.dart';
import 'package:vidavo/core/constants/app_images.dart';
import 'package:vidavo/core/constants/app_values.dart';

import '../widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 200.h, child: _logo(context)),
              _loginContent(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _loginContent(BuildContext context) {
    return Container(
      height: 600.h,
      width: AppValues.fullWidget(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppDimensions.cardRadius),
        ),
        color: Theme.of(context).cardColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0.w),
        child: LoginForm(
          formKey: formKey,
          usernameController: usernameController,
          passController: passwordController,
        ),
      ),
    );
  }

  Widget _logo(BuildContext context) {
    return Center(
      child: Image.asset(
        AppImages.logoPng,
        height: 58.h, // optional: adjust image size
        width: 137.w,
      ),
    );
  }
}
