import 'package:equatable/equatable.dart';

import '../../../domain/entiries/dynamic_form_entity.dart';

abstract class DynamicFormStatus extends Equatable {}

class InitForm extends DynamicFormStatus {
  @override
  List<Object?> get props => [];
}

class LoadingForm extends DynamicFormStatus {
  @override
  List<Object?> get props => [];
}

class FailedGetForm extends DynamicFormStatus {
  @override
  List<Object?> get props => [];
}

class SuccessFormStatus extends DynamicFormStatus {
  // dynamic form
  final List<DynamicFormEntity>? form;

  //saved form values
  final Map<String, dynamic>? formValues;

  SuccessFormStatus({this.form, this.formValues});

  @override
  List<Object?> get props => [form, formValues];
}
