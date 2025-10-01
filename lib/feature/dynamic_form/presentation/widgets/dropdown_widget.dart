import 'package:flutter/material.dart';
import 'package:vidavo/core/utils/string_helper.dart';
import 'package:vidavo/core/widgets/app_space.dart';
import 'package:vidavo/core/widgets/custom_dropdown.dart';

class DropdownWidget extends StatelessWidget {
  const DropdownWidget({
    super.key,
    required this.options,
    required this.label,
    required this.onChange,
  });
  final List<String> options;
  final String label;
  final Function(String value) onChange;
  @override
  Widget build(BuildContext context) {
    return Column(
      key: Key(label),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(label, style: Theme.of(context).textTheme.bodyMedium),
        ),
        AppSpace(height: 5),
        CustomDropDown(
          items: options,
          label: StringHelper.toLabel(label), // convert to normal label
          onChange: onChange,
        ),
      ],
    );
  }
}
