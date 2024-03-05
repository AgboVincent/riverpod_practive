import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  final String email;
  final String password;
  final bool remember;

  const LoginModel({
    required this.email,
    required this.password,
    required this.remember
  });

  factory LoginModel.fomJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}