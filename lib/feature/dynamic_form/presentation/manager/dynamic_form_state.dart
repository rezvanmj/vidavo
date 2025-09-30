import 'package:equatable/equatable.dart';
import 'package:vidavo/feature/dynamic_form/presentation/manager/status/dynamic_form_status.dart';

import '../../domain/entiries/dynamic_form_entity.dart';

class DynamicFormState extends Equatable {
  final List<DynamicFormEntity>? form;
  final DynamicFormStatus dynamicFormStatus;

  const DynamicFormState({required this.dynamicFormStatus, this.form});

  DynamicFormState copyWith({
    DynamicFormStatus? newDynamicFormState,
    List<DynamicFormEntity>? newDynamicForm,
  }) {
    return DynamicFormState(
      form: newDynamicForm,
      dynamicFormStatus: newDynamicFormState ?? dynamicFormStatus,
    );
  }

  @override
  List<Object?> get props => [form, dynamicFormStatus];
}
