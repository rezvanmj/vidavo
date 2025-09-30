import 'package:dartz/dartz.dart';
import 'package:vidavo/core/exceptions/failure.dart';
import 'package:vidavo/feature/dynamic_form/domain/entiries/dynamic_form_entity.dart';
import 'package:vidavo/feature/dynamic_form/domain/repositories/dynamic_form_repository.dart';

import '../../../../core/usecase/base_use_case.dart';

class GetDynamicFormUsecase
    extends BaseUseCase<List<DynamicFormEntity>, Map<String, dynamic>> {
  DynamicFormRepository repository;
  GetDynamicFormUsecase({required this.repository});

  @override
  Future<Either<Failure, List<DynamicFormEntity>>> call(params) async {
    return await repository.getFormFields();
  }
}
