import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/data/contracts/secure_storage_contract.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage implements SecureStorageContract {
  final FlutterSecureStorage flutterSecureStorage =
      const FlutterSecureStorage();

  @override
  FutureEither<String> get({required String key}) async {
    try {
      String? value = await flutterSecureStorage.read(key: key);

      return Right<String>(value ?? '');
    } catch (err) {
      // TODO: return a failure
      rethrow;
    }
  }

  @override
  FutureEither<bool> set({required String key, required value}) async {
    try {
      await flutterSecureStorage.write(key: key, value: value);

      return Right<bool>(true);
    } catch (err) {
      // TODO: return a failure
      rethrow;
    }
  }

  @override
  FutureEither<bool> unset({required String key}) async {
    try {
      await flutterSecureStorage.write(key: key, value: null);

      return Right<bool>(true);
    } catch (err) {
      // TODO: return a failure
      rethrow;
    }
  }
}
