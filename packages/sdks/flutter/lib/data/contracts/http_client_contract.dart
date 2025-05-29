import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/core/types/json.dart';

abstract class HttpClientContract {
  FutureEither<bool> delete({required String url, Json? urlParams});

  FutureEither<Json> get({
    required String url,
    Json? queryParams,
    Json? urlParams,
  });

  FutureEither<T> index<T>({
    required String url,
    Json? queryParams,
    Json? urlParams,
    bool isPaginated = false,
  });

  FutureEither<bool> patch({
    required String url,
    required Json data,
    Json? urlParams,
  });

  FutureEither<Json> post({
    required String url,
    required dynamic data,
    Json? urlParams,
  });

  FutureEither<bool> put({
    required String url,
    required dynamic data,
    Json? urlParams,
  });
}
