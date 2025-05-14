import 'package:sdk_flutter/core/constants/constants.dart';
import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/core/failures/not_found_failure.dart';
import 'package:sdk_flutter/core/failures/unauthenticated_failure.dart';
import 'package:sdk_flutter/core/failures/unexpected_failure.dart';
import 'package:sdk_flutter/core/types/json.dart';
import 'package:sdk_flutter/core/types/paginated_data.dart';
import 'package:sdk_flutter/data/contracts/http_client_contract.dart';
import 'package:sdk_flutter/data/contracts/secure_storage_contract.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart' show kIsWeb;

class CustomInterceptor extends Interceptor {
  SecureStorageContract secureStorage;

  CustomInterceptor({required this.secureStorage});

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    Either<String?> authorizationToken = await secureStorage.get(
      key: Constants.authorizationTokenKey,
    );

    if (authorizationToken.isRight &&
        authorizationToken.right != null &&
        authorizationToken.right!.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer ${authorizationToken.right}';
    }

    return handler.next(options);
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    if (response.statusCode == 401) {
      await secureStorage.unset(key: Constants.authorizationTokenKey);
    }

    return handler.next(response);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      await secureStorage.unset(key: Constants.authorizationTokenKey);
    }

    return handler.next(err);
  }
}

class HttpClient implements HttpClientContract {
  final Dio _client = Dio(
      BaseOptions(
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'Accept-Language': ui.PlatformDispatcher.instance.locale.languageCode,
        },
        baseUrl: Constants.apiBaseUrl,
        validateStatus: (int? status) => true,
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        sendTimeout: kIsWeb ? null : const Duration(seconds: 60),
      ),
    )
    ..interceptors.add(
      CustomInterceptor(secureStorage: GetIt.I.get<SecureStorageContract>()),
    );

  @override
  FutureEither<bool> delete({required String url}) async {
    dynamic apiResponse = await _client.delete(url);

    return parseResponse<bool>(apiResponse);
  }

  @override
  FutureEither<Json> get({required String url, Json? queryParams}) async {
    dynamic apiResponse = await _client.get(url, queryParameters: queryParams);

    return parseResponse<Json>(apiResponse);
  }

  @override
  FutureEither<T> index<T>({
    required String url,
    Json? queryParams,
    bool isPaginated = false,
  }) async {
    dynamic apiResponse = await _client.get(url, queryParameters: queryParams);

    return parseResponse<T>(apiResponse, isPaginated: isPaginated);
  }

  @override
  FutureEither<bool> patch({required String url, required Json data}) async {
    dynamic apiResponse = await _client.patch(url, data: data);

    return parseResponse<bool>(apiResponse);
  }

  @override
  FutureEither<Json> post({required String url, required dynamic data}) async {
    dynamic apiResponse = await _client.post(url, data: data);

    return parseResponse<Json>(apiResponse);
  }

  @override
  FutureEither<bool> put({required String url, required dynamic data}) async {
    if (data is FormData) {
      data.fields.add(const MapEntry('_method', 'PUT'));

      dynamic apiResponse = await _client.post(url, data: data);

      return parseResponse<bool>(apiResponse);
    }

    dynamic apiResponse = await _client.put(url, data: data);

    return parseResponse<bool>(apiResponse);
  }

  Either<T> parseResponse<T>(
    Response<dynamic> response, {
    bool isPaginated = false,
  }) {
    switch (response.statusCode) {
      case 204:
        return Right<T>(true as T);
      case 200:
        return !isPaginated
            ? Right<T>(response.data as T)
            : Right<T>(PaginatedData.fromMap(response.data) as T);
      case 201:
        return Right<T>(response.data as T);
      case 401:
        return Left<T>(
          UnauthenticatedFailure(message: response.data['message']),
        );
      case 404:
        return Left<T>(NotFoundFailure(message: response.data['message']));
      default:
        return Left<T>(UnexpectedFailure(message: response.data['message']));
    }
  }
}
