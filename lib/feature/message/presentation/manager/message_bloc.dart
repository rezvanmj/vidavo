import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'message_event.dart';
import 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc() : super(MessageState()) {
    on<SaveMessage>((event, emit) {
      log('emittttt');
      log("New state: ${state.title}, ${state.message}");
      emit(state.copyWith(newMessage: event.message, newTitle: event.title));
    });
  }
}
