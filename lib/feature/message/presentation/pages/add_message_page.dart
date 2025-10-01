import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vidavo/core/constants/app_dimensions.dart';
import 'package:vidavo/core/constants/app_strings.dart';
import 'package:vidavo/core/constants/app_values.dart';
import 'package:vidavo/core/widgets/app_space.dart';
import 'package:vidavo/core/widgets/app_text_field.dart';
import 'package:vidavo/feature/message/presentation/manager/message_bloc.dart';
import 'package:vidavo/feature/message/presentation/manager/message_event.dart';
import 'package:vidavo/feature/message/presentation/pages/show_message_page.dart';

class AddMessagePage extends StatelessWidget {
  AddMessagePage({super.key});
  final TextEditingController titleController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.addMessage)),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: _body(context),
      ),
    );
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.horizontalPadding,
      ),
      child: SafeArea(child: Column(children: [_fields(), _button(context)])),
    );
  }

  Widget _button(BuildContext blocContext) {
    return SizedBox(
      width: AppValues.fullWidget(blocContext),
      child: ElevatedButton(
        onPressed: () {
          if (formKey.currentState?.validate() ?? false) {
            blocContext.read<MessageBloc>().add(
              SaveMessage(
                title: titleController.text,
                message: messageController.text,
              ),
            );

            Navigator.of(blocContext).push(
              //navigating without disposing bloc
              MaterialPageRoute(
                builder: (context) => BlocProvider.value(
                  value: BlocProvider.of<MessageBloc>(blocContext),
                  child: ShowMessagePage(),
                ),
              ),
            );
          }
        },
        child: Text(AppStrings.showMessage),
      ),
    );
  }

  Widget _fields() {
    return Expanded(
      child: Form(
        key: formKey,
        child: ListView(
          children: [
            AppSpace(height: AppDimensions.verticalSpace),
            AppTextField(
              hint: AppStrings.title,
              label: AppStrings.title,
              controller: titleController,
              validator: (value) {
                if (value != null) {
                  if (value.isEmpty) {
                    return AppStrings.requiredField;
                  }
                }
                return null;
              },
            ),
            AppSpace(height: AppDimensions.verticalSpace),
            AppTextField(
              hint: AppStrings.message,
              label: AppStrings.message,
              controller: messageController,
              maxLines: 5,
              validator: (value) {
                if (value != null) {
                  if (value.isEmpty) {
                    return AppStrings.requiredField;
                  }
                }
                return null;
              },
            ),
            AppSpace(height: AppDimensions.verticalSpace),
          ],
        ),
      ),
    );
  }
}
