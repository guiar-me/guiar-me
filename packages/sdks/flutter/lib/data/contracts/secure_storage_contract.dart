import 'package:sdk_flutter/core/either/either.dart';

abstract class SecureStorageContract {
  FutureEither<String> get({required String key});

  FutureEither<bool> set({required String key, required dynamic value});

  FutureEither<bool> unset({required String key});
}
