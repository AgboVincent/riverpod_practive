import 'package:flutter/foundation.dart' show immutable;
import 'package:riverpod_practive/data/state/auth_result.dart';

@immutable
class AuthState {
  final AuthResult? authResult;
  final bool isLoading;
  final String? userId;

  const AuthState(
      {required this.authResult,
      required this.isLoading,
      required this.userId});

  const AuthState.unknown()
      : authResult = null,
        isLoading = false,
        userId = null;

  AuthState copiedWithIsLoading(bool isLoading) => AuthState(
        authResult: authResult,
        isLoading: isLoading,
        userId: userId,
      );

  @override
  bool operator ==(covariant AuthState other) =>
      identical(this, other) ||
      (authResult == other.authResult &&
          isLoading == other.isLoading &&
          userId == other.userId);
          
  @override
  int get hashCode => Object.hash(authResult, isLoading, userId);
          
}
