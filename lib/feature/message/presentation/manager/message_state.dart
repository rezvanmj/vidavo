import 'package:equatable/equatable.dart';
import 'package:vidavo/feature/message/presentation/manager/status/message_status.dart';

class MessageState extends Equatable {
  final MessageStatus? messageStatus;
  const MessageState({this.messageStatus});

  MessageState copyWith({MessageStatus? newMessageStatus}) {
    return MessageState(messageStatus: newMessageStatus ?? messageStatus);
  }

  @override
  List<Object?> get props => [messageStatus];
}
