import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthLoginRequested>((event, state) async {
      final email = event.email;
      final password = event.password;

      if (email.isEmpty) {
        emit(AuthFailure(error: 'Email cannot be empty'));
        return;
      }

      if (!email.contains('@')) {
        emit(AuthFailure(error: 'Invalid email'));
        return;
      }

      if (password.length < 6) {
        emit(AuthFailure(error: "Password cannot be less than 6 charaters"));
        return;
      }

      await Future.delayed(const Duration(seconds: 1), () {
        return emit(AuthSuccess('$email-$password'));
      });
    });
  }
}
