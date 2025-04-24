import 'package:sdk_flutter/core/types/json.dart';
import 'package:equatable/equatable.dart';

class SignInParams extends Equatable {
  final String password;
  final String email;

  @override
  List<Object> get props => <Object>[password, email];

  const SignInParams({required this.password, required this.email});

  Json toMap() {
    return <String, dynamic>{'password': password, 'email': email};
  }

  SignInParams copyWith({String? password, String? email}) {
    return SignInParams(
      password: password ?? this.password,
      email: email ?? this.email,
    );
  }
}
