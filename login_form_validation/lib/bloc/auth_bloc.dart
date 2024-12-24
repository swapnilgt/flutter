import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthLoginRequested>((event, state) async {
      emit(AuthLoading());
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

    on<AuthLogoutRequested>((event, state) async {
      emit(AuthLoading());
      try {
        await Future.delayed(const Duration(seconds: 1), () {
          return emit(AuthInitial());
        });
      } catch (e) {
        emit(AuthFailure(error: e.toString()));
      }
    });
  }

  @override
  void onChange(Change<AuthState> change) {
    super.onChange(change);
    print('AuthBloc change - $change');
  }

  @override
  void onTransition(Transition<AuthEvent, AuthState> transition) {
    super.onTransition(transition);
    print('AuthBloc transition - $transition');
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print('AuthBloc error - $error');
  }
}
