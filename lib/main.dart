import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vidavo/feature/authentication/presentation/manager/auth_bloc.dart';

import 'core/constants/app_theme.dart';
import 'core/service_locator.dart';
import 'feature/authentication/presentation/pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await serviceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AuthBloc(),
      child: ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: false,
        useInheritedMediaQuery: true,

        builder: (_, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: appLightThemeData,
          title: 'Vidavo',
          home: LoginPage(),
        ),
      ),
    );
  }
}
