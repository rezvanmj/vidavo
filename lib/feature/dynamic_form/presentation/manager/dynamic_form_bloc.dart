import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vidavo/core/exceptions/failure.dart';
import 'package:vidavo/feature/dynamic_form/domain/use_cases/get_dynamic_form_usecase.dart';
import 'package:vidavo/feature/dynamic_form/presentation/manager/status/dynamic_form_status.dart';

import '../../domain/entiries/dynamic_form_entity.dart';
import 'dynamic_form_event.dart';
import 'dynamic_form_state.dart';

class DynamicFormBloc extends Bloc<DynamicFormEvent, DynamicFormState> {
  GetDynamicFormUsecase getDynamicFormUseCase;
  DynamicFormBloc({required this.getDynamicFormUseCase})
    : super(DynamicFormState(dynamicFormStatus: InitForm())) {
    on<GetDynamicFormEvent>(_getDynamicForm);

    on<ChangeFormValues>(_changeFormValues);
  }

  FutureOr<void> _changeFormValues(
    ChangeFormValues event,
    Emitter<DynamicFormState> emit,
  ) {
    if (state.dynamicFormStatus is SuccessFormStatus) {
      final currentState = state.dynamicFormStatus as SuccessFormStatus;

      final updatedValues = Map<String, dynamic>.from(
        currentState.formValues ?? {},
      );

      if (event.formValues != null) {
        updatedValues.addAll(event.formValues!);
      }

      emit(
        state.copyWith(
          newDynamicFormState: SuccessFormStatus(
            form: currentState.form,
            formValues: updatedValues,
          ),
        ),
      );
    }
  }

  FutureOr<void> _getDynamicForm(event, emit) async {
    emit(state.copyWith(newDynamicFormState: LoadingForm()));
    Either<Failure, List<DynamicFormEntity>> response =
        await getDynamicFormUseCase({});
    response.fold(
      (error) {
        emit(state.copyWith(newDynamicFormState: FailedGetForm()));
      },
      (data) {
        emit(
          state.copyWith(newDynamicFormState: SuccessFormStatus(form: data)),
        );
      },
    );
  }
}
