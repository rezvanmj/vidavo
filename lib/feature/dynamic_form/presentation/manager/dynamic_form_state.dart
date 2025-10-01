import 'package:equatable/equatable.dart';
import 'package:vidavo/feature/dynamic_form/presentation/manager/status/dynamic_form_status.dart';

import '../../domain/entiries/dynamic_form_entity.dart';

class DynamicFormState extends Equatable {
  // dynamic form
  final List<DynamicFormEntity>? form;
  //current status
  final DynamicFormStatus dynamicFormStatus;
  //saved of form values
  final Map<String, dynamic>? formValues;

  const DynamicFormState({
    required this.dynamicFormStatus,
    this.form,
    this.formValues,
  });

  DynamicFormState copyWith({
    DynamicFormStatus? newDynamicFormState,
    List<DynamicFormEntity>? newDynamicForm,
    Map<String, dynamic>? newFormValues,
  }) {
    return DynamicFormState(
      form: newDynamicForm ?? form,
      formValues: newFormValues ?? formValues,
      dynamicFormStatus: newDynamicFormState ?? dynamicFormStatus,
    );
  }

  @override
  List<Object?> get props => [form, dynamicFormStatus, formValues];
}
