import 'package:get_it/get_it.dart';
import 'package:vidavo/feature/dynamic_form/data/repositories/dynamic_form_repository_imp.dart';
import 'package:vidavo/feature/dynamic_form/domain/use_cases/get_dynamic_form_usecase.dart';

import '../feature/dynamic_form/domain/repositories/dynamic_form_repository.dart';

final GetIt locator = GetIt.instance;

Future<void> serviceLocator() async {
  // repository
  locator.registerSingleton<DynamicFormRepository>(DynamicFormRepositoryImpl());

  //useCase
  locator.registerSingleton<GetDynamicFormUsecase>(
    GetDynamicFormUsecase(repository: locator()),
  );
}
