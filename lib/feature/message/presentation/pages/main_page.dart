import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vidavo/core/constants/app_values.dart';
import 'package:vidavo/feature/main/presentation/manager/main_bloc.dart';

import '../../../../core/constants/app_dimensions.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        child: SafeArea(
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
                    onPressed: () {},
                    child: Text('Question 1'),
                  ),
                ),
                SizedBox(
                  width: AppValues.fullWidget(context),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Question 3'),
                  ),
                ),
              ],
            ),
          ),
        ),
        create: (BuildContext context) => MainBloc(),
      ),
    );
  }
}
