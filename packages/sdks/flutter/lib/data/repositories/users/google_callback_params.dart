import 'package:sdk_flutter/core/types/json.dart';
import 'package:equatable/equatable.dart';

class GoogleCallbackParams extends Equatable {
  final String code;

  @override
  List<Object> get props => <Object>[code];

  const GoogleCallbackParams({required this.code});

  Json toMap() {
    return <String, dynamic>{'code': code};
  }

  GoogleCallbackParams copyWith({String? code}) {
    return GoogleCallbackParams(code: code ?? this.code);
  }
}
