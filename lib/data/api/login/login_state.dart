


class LoginState {
   bool? loginLoading;
   Map? loginLoaded;
   String? loginError;

  LoginState({this.loginLoading, this.loginLoaded, this.loginError});

  LoginState copyWith({
    bool? loginLoading,
    Map? loginLoaded,
    String? loginError
  }) {
    return LoginState(
      loginLoading: loginLoading ?? this.loginLoading,
      loginLoaded: loginLoaded ?? this.loginLoaded,
      loginError: loginError ?? this.loginError
    );
  }
}
