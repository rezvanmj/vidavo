import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vidavo/core/utils/string_helper.dart';

class DatePickerField extends StatefulWidget {
  DatePickerField({
    super.key,
    required this.label,
    required this.onChanged,
    this.value,
  });

  final String label;
  final String? value;
  final Function(String value) onChanged;

  @override
  State<DatePickerField> createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  @override
  void initState() {
    datePickerController.text = widget.value ?? '';
    super.initState();
  }

  final TextEditingController datePickerController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime now = DateTime.now();

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(1900),
      lastDate: now,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: Theme.of(context).colorScheme.primary,
              onPrimary: Theme.of(context).colorScheme.onPrimary,
              onSurface: Colors.black,
            ),

            textTheme: Theme.of(context).textTheme,
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(
                  context,
                ).colorScheme.primary, // button text color
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      widget.onChanged(
        datePickerController.text = DateFormat('yyyy-MM-dd').format(picked),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: Key(widget.label),
      controller: datePickerController,
      readOnly: true,
      style: Theme.of(context).textTheme.bodyMedium,

      decoration: InputDecoration(
        helperStyle: Theme.of(context).textTheme.bodyMedium,
        labelText: StringHelper.toLabel(
          widget.label,
        ), // convert to normal label
        suffixIcon: const Icon(Icons.calendar_today),
        border: const OutlineInputBorder(),
      ),
      onTap: () => _selectDate(context),
    );
  }
}
