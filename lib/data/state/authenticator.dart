import 'package:riverpod_practive/data/state/auth_result.dart';

class Authenticator {
  const Authenticator();
  String? get userId => '';
  bool get isAlreadyLoggedIn => userId != null;
  String get displayName => '';

  Future<void> logOut() async {
    //set the auth token to null
  }

  Future<AuthResult> login() async {
    String? token = '';
    if (token == null) {
      return AuthResult.aborted;
    }
    return AuthResult.success;
  }
}
