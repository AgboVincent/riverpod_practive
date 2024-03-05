// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchUserHash() => r'514377a7177fd8b2d9f1ddd1aaf984d010252ca9';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [fetchUser].
@ProviderFor(fetchUser)
const fetchUserProvider = FetchUserFamily();

/// See also [fetchUser].
class FetchUserFamily extends Family<AsyncValue<FakeUser>> {
  /// See also [fetchUser].
  const FetchUserFamily();

  /// See also [fetchUser].
  FetchUserProvider call(
    String input,
  ) {
    return FetchUserProvider(
      input,
    );
  }

  @override
  FetchUserProvider getProviderOverride(
    covariant FetchUserProvider provider,
  ) {
    return call(
      provider.input,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchUserProvider';
}

/// See also [fetchUser].
class FetchUserProvider extends AutoDisposeFutureProvider<FakeUser> {
  /// See also [fetchUser].
  FetchUserProvider(
    String input,
  ) : this._internal(
          (ref) => fetchUser(
            ref as FetchUserRef,
            input,
          ),
          from: fetchUserProvider,
          name: r'fetchUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchUserHash,
          dependencies: FetchUserFamily._dependencies,
          allTransitiveDependencies: FetchUserFamily._allTransitiveDependencies,
          input: input,
        );

  FetchUserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.input,
  }) : super.internal();

  final String input;

  @override
  Override overrideWith(
    FutureOr<FakeUser> Function(FetchUserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchUserProvider._internal(
        (ref) => create(ref as FetchUserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        input: input,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<FakeUser> createElement() {
    return _FetchUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchUserProvider && other.input == input;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, input.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchUserRef on AutoDisposeFutureProviderRef<FakeUser> {
  /// The parameter `input` of this provider.
  String get input;
}

class _FetchUserProviderElement
    extends AutoDisposeFutureProviderElement<FakeUser> with FetchUserRef {
  _FetchUserProviderElement(super.provider);

  @override
  String get input => (origin as FetchUserProvider).input;
}

String _$userLoginHash() => r'15131c6ebd2bd458b32a714b330b16dfdea500bf';

/// See also [userLogin].
@ProviderFor(userLogin)
const userLoginProvider = UserLoginFamily();

/// See also [userLogin].
class UserLoginFamily extends Family<AsyncValue> {
  /// See also [userLogin].
  const UserLoginFamily();

  /// See also [userLogin].
  UserLoginProvider call(
    LoginModel loginModel,
  ) {
    return UserLoginProvider(
      loginModel,
    );
  }

  @override
  UserLoginProvider getProviderOverride(
    covariant UserLoginProvider provider,
  ) {
    return call(
      provider.loginModel,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userLoginProvider';
}

/// See also [userLogin].
class UserLoginProvider extends AutoDisposeFutureProvider<Object?> {
  /// See also [userLogin].
  UserLoginProvider(
    LoginModel loginModel,
  ) : this._internal(
          (ref) => userLogin(
            ref as UserLoginRef,
            loginModel,
          ),
          from: userLoginProvider,
          name: r'userLoginProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userLoginHash,
          dependencies: UserLoginFamily._dependencies,
          allTransitiveDependencies: UserLoginFamily._allTransitiveDependencies,
          loginModel: loginModel,
        );

  UserLoginProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.loginModel,
  }) : super.internal();

  final LoginModel loginModel;

  @override
  Override overrideWith(
    FutureOr<Object?> Function(UserLoginRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserLoginProvider._internal(
        (ref) => create(ref as UserLoginRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        loginModel: loginModel,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Object?> createElement() {
    return _UserLoginProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserLoginProvider && other.loginModel == loginModel;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, loginModel.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserLoginRef on AutoDisposeFutureProviderRef<Object?> {
  /// The parameter `loginModel` of this provider.
  LoginModel get loginModel;
}

class _UserLoginProviderElement
    extends AutoDisposeFutureProviderElement<Object?> with UserLoginRef {
  _UserLoginProviderElement(super.provider);

  @override
  LoginModel get loginModel => (origin as UserLoginProvider).loginModel;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
