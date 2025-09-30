import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vidavo/feature/authentication/presentation/manager/auth_event.dart';
import 'package:vidavo/feature/authentication/presentation/manager/auth_state.dart';

class MainBloc extends Bloc<AuthEvent, AuthState> {
  MainBloc() : super(AuthState()) {}
}
