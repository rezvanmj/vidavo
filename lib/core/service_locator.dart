import 'package:get_it/get_it.dart';

import '../feature/authentication/presentation/manager/auth_bloc.dart';

GetIt locator = GetIt.instance;

serviceLocator() async {
  locator.registerSingleton<AuthBloc>(AuthBloc());
  // locator.registerSingleton<MainBloc>(MainBloc());
}
