import 'package:dartz/dartz.dart';
import 'package:vidavo/core/exceptions/failure.dart';

import '../entiries/dynamic_form_entity.dart';

abstract class DynamicFormRepository {
  Future<Either<Failure, List<DynamicFormEntity>>> getFormFields();
}
