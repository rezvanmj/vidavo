import 'package:flutter/material.dart';
import 'package:vidavo/core/utils/string_helper.dart';

class RadioField extends StatefulWidget {
  final String label;
  final List<String> options;
  final Function(String?)? onChanged;
  final String groupValue;
  const RadioField({
    super.key,
    required this.label,
    required this.options,
    required this.groupValue,
    this.onChanged,
  });

  @override
  State<RadioField> createState() => _RadioFieldState();
}

class _RadioFieldState extends State<RadioField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      key: Key(widget.label),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringHelper.toLabel(widget.label), //convert to normal label
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        ...widget.options.map(
          (option) => RadioListTile<String>(
            title: Text(option, style: Theme.of(context).textTheme.bodySmall),
            value: option,
            groupValue: widget.groupValue,
            onChanged: (value) {
              if (widget.onChanged != null) widget.onChanged!(value);
            },
          ),
        ),
      ],
    );
  }
}
