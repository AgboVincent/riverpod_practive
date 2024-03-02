// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'fakeUser.g.dart';

@immutable
class FakeUser {
  final String name;
  final String email;
  const FakeUser({
      required this.name,
      required this.email
  });

  FakeUser copyWith({
    String? name,
    String? email,
  }) {
    return FakeUser(
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
    };
  }

  factory FakeUser.fromMap(Map<String, dynamic> map) {
    return FakeUser(
      name: map['name'] as String,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FakeUser.fromJson(String source) => FakeUser.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'FakeUser(name: $name, email: $email)';

  @override
  bool operator ==(covariant FakeUser other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.email == email;
  }

  @override
  int get hashCode => name.hashCode ^ email.hashCode;
}


//final userRepositoryProvider = Provider((ref) => UserRepository(ref));

@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  return UserRepository(ref);
}

class UserRepository {
  final Ref ref;
  UserRepository(this.ref);
Future<FakeUser> fetchUserData (String input) {
  var url = 'https://jsonplaceholder.typicode.com/users/$input';

   return http.get(Uri.parse(url)).then((value) => FakeUser.fromJson(value.body));
}
}