import 'package:flutter/material.dart';
import 'package:vidavo/core/utils/string_helper.dart';
import 'package:vidavo/core/widgets/app_text_field.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    super.key,
    required this.label,
    required this.onChanged,
    required this.value,
  });
  final String label;

  final String value;
  final Function(String value) onChanged;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.text = widget.value;
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      key: Key(widget.label),
      onChanged: widget.onChanged,
      hint: widget.label,
      label: StringHelper.toLabel(widget.label), // convert to normal label
      controller: controller,
    );
  }
}
