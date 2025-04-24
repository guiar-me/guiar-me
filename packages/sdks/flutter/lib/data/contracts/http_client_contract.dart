import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/core/types/json.dart';

abstract class HttpClientContract {
  FutureEither<bool> delete({required String url});

  FutureEither<Json> get({required String url, Json? queryParams});

  FutureEither<T> index<T>({
    required String url,
    Json? queryParams,
    bool isPaginated = false,
  });

  FutureEither<bool> patch({required String url, required Json data});

  FutureEither<Json> post({required String url, required dynamic data});

  FutureEither<bool> put({required String url, required dynamic data});
}
