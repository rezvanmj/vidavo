import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vidavo/core/constants/app_strings.dart';
import 'package:vidavo/core/widgets/app_space.dart';
import 'package:vidavo/feature/message/presentation/manager/message_bloc.dart';
import 'package:vidavo/feature/message/presentation/manager/message_state.dart';

import '../../../../core/constants/app_dimensions.dart';

class ShowMessagePage extends StatelessWidget {
  const ShowMessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.showMessage)),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.horizontalPadding,
        ),
        child: BlocBuilder<MessageBloc, MessageState>(
          builder: (context, state) {
            if (state.title != null && state.message != null) {
              return _body(state, context);
            }

            return const Center(child: Text("No message saved yet"));
          },
        ),
      ),
    );
  }

  Widget _body(MessageState state, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            state.title ?? '',

            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        AppSpace(height: AppDimensions.verticalSpace),
        Text(state.message ?? '', style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}
