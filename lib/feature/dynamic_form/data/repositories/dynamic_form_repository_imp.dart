import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:vidavo/core/exceptions/failure.dart';
import 'package:vidavo/feature/dynamic_form/data/model/dynamic_form_model.dart';
import 'package:vidavo/feature/dynamic_form/domain/entiries/dynamic_form_entity.dart';

import '../../../../core/exceptions/server_exception.dart';
import '../../domain/repositories/dynamic_form_repository.dart';

class DynamicFormRepositoryImpl extends DynamicFormRepository {
  String jsonFilePath = 'assets/json/jsonData.json';

  // get static data from json file in root project
  @override
  Future<Either<Failure, List<DynamicFormEntity>>> getFormFields() async {
    try {
      final String response = await rootBundle.loadString(jsonFilePath);
      final Map<String, dynamic> decodedJson = json.decode(response);

      final List<DynamicFormEntity> dynamicForm = decodedJson.entries
          .map(
            (entry) =>
                DynamicFormModel.fromJson(entry.key, entry.value).toEntity(),
          )
          .toList();

      return Right(dynamicForm);
    } on ServerException catch (error) {
      return Left(ServerFailure(error: error));
    }
  }
}
