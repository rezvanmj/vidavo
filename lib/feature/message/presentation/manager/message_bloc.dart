import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vidavo/feature/message/presentation/manager/status/message_status.dart';

import 'message_event.dart';
import 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc() : super(MessageState()) {
    on<SaveMessage>(_saveMessage);
  }

  FutureOr<void> _saveMessage(event, emit) {
    emit(
      state.copyWith(
        newMessageStatus: SaveMessageStatus(
          message: event.message,
          title: event.title,
        ),
      ),
    );
  }
}
