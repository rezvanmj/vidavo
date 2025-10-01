import 'package:flutter_bloc/flutter_bloc.dart';

import 'message_event.dart';
import 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc() : super(MessageState()) {
    on<SaveMessage>((event, emit) {
      emit(state.copyWith(newMessage: event.message, newTitle: event.title));
    });
  }
}
