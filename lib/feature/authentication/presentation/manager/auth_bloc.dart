import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vidavo/feature/authentication/presentation/manager/auth_event.dart';
import 'package:vidavo/feature/authentication/presentation/manager/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState()) {
    // on<Agreement>((event, emit) {
    //   emit(
    //     state.copyWith(
    //       newSuccessStatus: SuccessStatus(
    //         isAgree: !(state.successStatus?.isAgree ?? true),
    //       ),
    //     ),
    //   );
    // });
  }
}
