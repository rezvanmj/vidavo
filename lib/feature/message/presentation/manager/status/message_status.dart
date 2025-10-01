import 'package:equatable/equatable.dart';

abstract class MessageStatus extends Equatable {}

class SaveMessageStatus extends MessageStatus {
  final String? title;
  final String? message;
  SaveMessageStatus({this.title, this.message});

  @override
  List<Object?> get props => [title, message];
}
