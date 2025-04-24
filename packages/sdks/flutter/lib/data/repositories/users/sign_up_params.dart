import 'package:sdk_flutter/core/types/json.dart';
import 'package:equatable/equatable.dart';

class SignUpParams extends Equatable {
  final String password;
  final String email;
  final String name;

  @override
  List<dynamic> get props => <dynamic>[password, email, name];

  const SignUpParams({
    required this.password,
    required this.email,
    required this.name,
  });

  Json toMap() {
    return <String, dynamic>{
      'password': password,
      'email': email,
      'name': name,
    };
  }

  SignUpParams copyWith({String? password, String? email, String? name}) {
    return SignUpParams(
      password: password ?? this.password,
      email: email ?? this.email,
      name: name ?? this.name,
    );
  }
}
