import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vidavo/core/constants/app_strings.dart';
import 'package:vidavo/core/constants/app_values.dart';
import 'package:vidavo/feature/dynamic_form/presentation/pages/dynamic_form_page.dart';
import 'package:vidavo/feature/main/presentation/manager/main_bloc.dart';
import 'package:vidavo/feature/message/presentation/pages/add_message_page.dart';

import '../../../../core/constants/app_dimensions.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => MainBloc(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        appBar: _appbar(),
        body: _body(context),
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
      leading: SizedBox(),
      centerTitle: true,
      title: Text(AppStrings.appName),
    );
  }

  Widget _body(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.horizontalPadding,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: AppValues.fullWidget(context),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DynamicFormPage()),
                  );
                },
                child: Text('Question 1'),
              ),
            ),
            SizedBox(
              width: AppValues.fullWidget(context),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AddMessagePage()),
                  );
                },
                child: Text('Question 3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
