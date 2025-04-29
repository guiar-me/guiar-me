import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/data/contracts/secure_storage_contract.dart';

class SecureStorageMock implements SecureStorageContract {
  String _token = '';

  void setToken(String token) {
    _token = token;
  }

  @override
  FutureEither<String> get({required String key}) async {
    return Right<String>(_token);
  }

  @override
  FutureEither<bool> set({required String key, required value}) async {
    return Right<bool>(true);
  }

  @override
  FutureEither<bool> unset({required String key}) async {
    return Right<bool>(true);
  }
}
