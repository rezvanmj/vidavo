import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vidavo/core/constants/app_strings.dart';
import 'package:vidavo/core/service_locator.dart';
import 'package:vidavo/feature/dynamic_form/presentation/manager/dynamic_form_bloc.dart';
import 'package:vidavo/feature/dynamic_form/presentation/manager/dynamic_form_event.dart';

import '../manager/dynamic_form_state.dart';
import '../manager/status/dynamic_form_status.dart';

class DynamicFormPage extends StatelessWidget {
  const DynamicFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(AppStrings.dynamicForm)),
      body: BlocProvider(
        create: (BuildContext context) =>
            DynamicFormBloc(getDynamicFormUseCase: locator())
              ..add(GetDynamicFormEvent()),
        child: BlocBuilder<DynamicFormBloc, DynamicFormState>(
          builder: (context, state) {
            if (state.dynamicFormStatus is LoadingForm) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.dynamicFormStatus is FailedGetForm) {
              return const Center(child: Text("Failed to load form"));
            } else if (state.dynamicFormStatus is SuccessForm) {
              final form = state.form; // ✅ get form data
              if (form == null) return const Text("No data");
              return Text('ff');
              // Assuming form.fields is a List<DynamicFormModel>
              // return ListView.builder(
              //   itemCount: form.key.length,
              //   itemBuilder: (context, index) {
              //     final field = form.fields[index];
              //     return ListTile(
              //       title: Text(field.name),
              //       subtitle: Text(field.type),
              //     );
              //   },
              // );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
