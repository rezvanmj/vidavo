import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vidavo/core/constants/app_dimensions.dart';
import 'package:vidavo/core/constants/app_enum.dart';
import 'package:vidavo/core/constants/app_strings.dart';
import 'package:vidavo/core/service_locator.dart';
import 'package:vidavo/feature/dynamic_form/domain/entiries/dynamic_form_entity.dart';
import 'package:vidavo/feature/dynamic_form/presentation/manager/dynamic_form_bloc.dart';
import 'package:vidavo/feature/dynamic_form/presentation/manager/dynamic_form_event.dart';

import '../../../../core/widgets/failure_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../manager/dynamic_form_state.dart';
import '../manager/status/dynamic_form_status.dart';
import '../widgets/checkbox_widget.dart';
import '../widgets/date_picker_widget.dart';
import '../widgets/dropdown_widget.dart';
import '../widgets/radio_widget.dart';
import '../widgets/text_field_widget.dart';

class DynamicFormPage extends StatelessWidget {
  const DynamicFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(AppStrings.dynamicForm)),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: BlocProvider(
          create: (BuildContext context) =>
              DynamicFormBloc(getDynamicFormUseCase: locator())
                ..add(GetDynamicFormEvent()),
          child: BlocBuilder<DynamicFormBloc, DynamicFormState>(
            builder: (context, state) {
              if (state.dynamicFormStatus is LoadingForm) {
                return LoadingWidget();
              } else if (state.dynamicFormStatus is FailedGetForm) {
                return FailureWidget();
              } else if (state.dynamicFormStatus is SuccessForm) {
                final form = state.form;
                final values = state.formValues ?? {};
                if (form == null) return FailureWidget();

                return ListView.builder(
                  padding: EdgeInsets.all(AppDimensions.horizontalPadding),
                  itemCount: form.length,
                  itemBuilder: (context, index) {
                    final field = form[index];

                    switch (field.type) {
                      case FieldType.text:
                        return _textField(field, context, values);
                      case FieldType.dropdown:
                        return _dropdown(context, field, values);
                      case FieldType.date:
                        return _datePicker(field, context, values);

                      case FieldType.checkbox:
                        return _checkbox(field, context, values);

                      case FieldType.radio:
                        return _radio(field, context, values);
                    }
                  },
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }

  Widget _radio(
    DynamicFormEntity field,
    BuildContext context,
    Map<String, dynamic> values,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppDimensions.verticalSpace),
      child: RadioField(
        label: field.key,
        groupValue: values.containsKey(field.key) ? values[field.key] : '',
        options: field.options ?? [],
        onChanged: (value) {
          context.read<DynamicFormBloc>().add(
            ChangeFormValues(formValues: {field.key: value}),
          );
        },
      ),
    );
  }

  Widget _datePicker(
    DynamicFormEntity field,
    BuildContext context,
    Map<String, dynamic> values,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppDimensions.verticalSpace),
      child: DatePickerField(
        label: field.key,
        onChanged: (value) {
          context.read<DynamicFormBloc>().add(
            ChangeFormValues(formValues: {field.key: value}),
          );
        },
      ),
    );
  }

  Widget _checkbox(
    DynamicFormEntity field,
    BuildContext context,
    Map<String, dynamic> values,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppDimensions.verticalSpace),
      child: CheckboxFieldWidget(
        label: field.key,
        field: field,
        onChange: (key, value) {
          context.read<DynamicFormBloc>().add(
            ChangeFormValues(formValues: {field.key: value}),
          );
        },
        value: values.containsKey(field.key) ? values[field.key] : false,
      ),
    );
  }

  Widget _dropdown(
    BuildContext context,
    DynamicFormEntity field,
    Map<String, dynamic> values,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppDimensions.verticalSpace),
      child: DropdownWidget(
        onChange: (value) {
          context.read<DynamicFormBloc>().add(
            ChangeFormValues(formValues: {field.key: value}),
          );
        },

        options: field.options ?? [],
        label: field.key,
      ),
    );
  }

  Widget _textField(
    DynamicFormEntity field,
    BuildContext context,
    Map<String, dynamic> values,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppDimensions.verticalSpace),
      child: TextFieldWidget(
        value: values.containsKey(field.key) ? values[field.key] : '',
        label: field.key,
        onChanged: (value) {
          //save changes in state
          context.read<DynamicFormBloc>().add(
            ChangeFormValues(formValues: {field.key: value}),
          );
        },
      ),
    );
  }
}
