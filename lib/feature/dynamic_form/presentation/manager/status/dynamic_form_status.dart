import 'package:equatable/equatable.dart';

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

class SuccessForm extends DynamicFormStatus {
  @override
  List<Object?> get props => [];
}
