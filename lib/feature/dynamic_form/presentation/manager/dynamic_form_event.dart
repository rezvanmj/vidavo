import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class DynamicFormEvent extends Equatable {}

class GetDynamicFormEvent extends DynamicFormEvent {
  @override
  List<Object?> get props => [];
}

class ChangeFormValues extends DynamicFormEvent {
  //all of form values
  final Map<String, dynamic>? formValues;

  ChangeFormValues({this.formValues});
  @override
  List<Object?> get props => [formValues];
}
