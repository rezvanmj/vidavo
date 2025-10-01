import 'package:equatable/equatable.dart';
import 'package:vidavo/feature/message/presentation/manager/status/message_status.dart';

class MessageState extends Equatable {
  final String? title;
  final String? message;
  final MessageStatus? messageStatus;
  const MessageState({this.title, this.message, this.messageStatus});

  MessageState copyWith({
    String? newTitle,
    String? newMessage,
    MessageStatus? newMessageStatus,
  }) {
    return MessageState(
      title: newTitle ?? title,
      message: newMessage ?? message,
      messageStatus: newMessageStatus ?? messageStatus,
    );
  }

  @override
  List<Object?> get props => [title, message, messageStatus];
}
