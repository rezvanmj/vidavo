import 'package:equatable/equatable.dart';
import 'package:vidavo/feature/dynamic_form/presentation/manager/status/dynamic_form_status.dart';

class DynamicFormState extends Equatable {
  //current statuses : loading , fail , success
  final DynamicFormStatus dynamicFormStatus;

  const DynamicFormState({required this.dynamicFormStatus});

  DynamicFormState copyWith({DynamicFormStatus? newDynamicFormState}) {
    return DynamicFormState(
      dynamicFormStatus: newDynamicFormState ?? dynamicFormStatus,
    );
  }

  @override
  List<Object?> get props => [dynamicFormStatus];
}
