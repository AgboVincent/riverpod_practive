import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practive/data/api/login/login_state.dart';
import 'package:riverpod_practive/data/api/login_api.dart';
import 'package:riverpod_practive/data/model/login/login_model.dart';

final authServiceProvider =
    StateNotifierProvider<LoginNotifier, LoginState>((ref) => LoginNotifier(ref));

class LoginNotifier extends StateNotifier<LoginState> {
  Ref ref;
  LoginNotifier(this.ref) : super(LoginState());

  Future login(
      {required String email,
      required String password,
      required bool remember}) async {
    updateState(LoginState(loginLoading: true));

    final userReq =
        LoginModel(email: email, password: password, remember: remember);
    final response = await ref.read(userRepoProvider).userLogin(userReq);

    if (response is Error) {
      updateState(LoginState(loginLoading: false, loginError: response.toString()));
    } else {
        updateState(LoginState(loginLoading:false, loginLoaded: response));
    }
  }

  void updateState(LoginState loginState) {
    LoginState login = LoginState(
        loginLoaded: loginState.loginLoaded,
        loginLoading: loginState.loginLoading,
        loginError: loginState.loginError);
    state = login;
  }
}
