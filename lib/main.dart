import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constants/app_theme.dart';
import 'core/service_locator.dart';
import 'feature/authentication/presentation/pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await serviceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800), // main sized of design app screen
      minTextAdapt: true,
      splitScreenMode: false,
      useInheritedMediaQuery: true,

      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: appLightThemeData,
        title: 'Vidavo',
        home: LoginPage(),
      ),
    );
  }
}
