import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.hint,
    required this.label,
    required this.controller,
    this.validator,
    this.onChanged,
  });

  final String hint;
  final String label;
  final Function(String value)? onChanged;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      autovalidateMode: AutovalidateMode.onUnfocus,
      validator: validator,
      controller: controller,
      style: _theme(context).textTheme.bodyMedium,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 12.h),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Text(label),
        hint: Text(
          hint,
          style: _theme(
            context,
          ).textTheme.bodyMedium?.copyWith(color: _theme(context).shadowColor),
        ),
      ),
    );
  }

  ThemeData _theme(BuildContext context) => Theme.of(context);
}
