import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class MessageEvent extends Equatable {}

class SaveMessage extends MessageEvent {
  final String? title;
  final String? message;

  SaveMessage({this.title, this.message});

  @override
  List<Object?> get props => [title, message];
}
