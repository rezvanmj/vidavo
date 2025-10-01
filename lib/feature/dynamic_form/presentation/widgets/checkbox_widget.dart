import 'package:flutter/material.dart';
import 'package:vidavo/core/utils/string_helper.dart';
import 'package:vidavo/feature/dynamic_form/domain/entiries/dynamic_form_entity.dart';

import '../../../../core/widgets/custoom_checkbox.dart';

class CheckboxFieldWidget extends StatefulWidget {
  const CheckboxFieldWidget({
    super.key,
    required this.label,
    required this.value,
    required this.field,
    required this.onChange,
  });
  final String label;
  final bool? value;
  final DynamicFormEntity field;
  final Function(String key, dynamic value) onChange;
  @override
  State<CheckboxFieldWidget> createState() => _CheckboxFieldWidgetState();
}

class _CheckboxFieldWidgetState extends State<CheckboxFieldWidget> {
  bool value = false;

  @override
  void initState() {
    value = widget.value ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomCheckbox(
      key: Key(widget.label),
      currentValue: widget.value ?? false,
      onChange: (value) {
        widget.onChange(widget.field.key ?? '', value);
      },
      label: StringHelper.toLabel(widget.label), // convert to normal label
    );
  }
}
