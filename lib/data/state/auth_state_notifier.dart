import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practive/data/state/auth_result.dart';
import 'package:riverpod_practive/data/state/auth_state.dart';
import 'package:riverpod_practive/data/state/authenticator.dart';

class AuthStateNotifier extends StateNotifier<AuthState> {
  final _authenticator = const Authenticator();

  AuthStateNotifier() : super(const AuthState.unknown()) {
    if (_authenticator.isAlreadyLoggedIn) {
      state = AuthState(
          authResult: AuthResult.success,
          isLoading: false,
          userId: _authenticator.userId);
    }
  }

  Future<void> logOut() async {
    state = state.copiedWithIsLoading(false);
    await _authenticator.logOut();
    state = const AuthState.unknown();
  }

  Future<void> login() async {
    state = state.copiedWithIsLoading(true);
    final result = await _authenticator.login();
    final userid = _authenticator.userId;

    if(AuthResult.success == result && userid != null){
      
    }
  }
}
