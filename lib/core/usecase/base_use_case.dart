import 'package:dartz/dartz.dart';
import 'package:vidavo/core/exceptions/failure.dart';

abstract class BaseUseCase<Type, Map> {
  //handling error using dartz package
  Future<Either<Failure, Type>> call(Map params);
}
