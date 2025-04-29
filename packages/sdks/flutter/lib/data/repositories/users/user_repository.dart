import 'package:sdk_flutter/core/constants/constants.dart';
import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/core/types/json.dart';
import 'package:sdk_flutter/core/types/paginated_data.dart';
import 'package:sdk_flutter/data/contracts/http_client_contract.dart';
import 'package:sdk_flutter/data/contracts/secure_storage_contract.dart';
import 'package:sdk_flutter/data/repositories/users/edit_user_params.dart';
import 'package:sdk_flutter/data/repositories/users/fcm_token_params.dart';
import 'package:sdk_flutter/data/repositories/users/sign_in_params.dart';
import 'package:sdk_flutter/data/repositories/users/sign_up_params.dart';
import 'package:sdk_flutter/domain/models/fcm_token_model.dart';
import 'package:sdk_flutter/domain/models/user_model.dart';

class UserRepository {
  final HttpClientContract _httpClient;
  final SecureStorageContract _secureStorage;

  UserRepository(this._httpClient, this._secureStorage);

  FutureEither<UserModel> signIn({required SignInParams params}) async {
    Either<Json> response = await _httpClient.post(
      url: 'users/sign-in',
      data: params.toMap(),
    );

    if (response.isLeft) {
      return Left<UserModel>(response.left!);
    }

    UserModel authenticatedUser = UserModel.fromMap(response.right!);

    await _secureStorage.set(
      key: Constants.authorizationTokenKey,
      value: authenticatedUser.authorization,
    );

    return Right(authenticatedUser);
  }

  FutureEither<UserModel> signUp({required SignUpParams params}) async {
    Either<Json> response = await _httpClient.post(
      url: 'users/sign-up',
      data: params.toMap(),
    );

    if (response.isLeft) {
      return Left<UserModel>(response.left!);
    }

    UserModel authenticatedUser = UserModel.fromMap(response.right!);

    await _secureStorage.set(
      key: Constants.authorizationTokenKey,
      value: authenticatedUser.authorization,
    );

    return Right(authenticatedUser);
  }

  FutureEither<UserModel> me() async {
    Either<Json> response = await _httpClient.get(url: 'users/me');

    return response.isRight
        ? Right<UserModel>(UserModel.fromMap(response.right!))
        : Left<UserModel>(response.left!);
  }

  FutureEither<bool> edit({required EditUserParams params}) async {
    Either<bool> response = await _httpClient.put(
      url: 'users/${params.id}',
      data: params.toMap(),
    );

    return response.isRight
        ? Right<bool>(response.right!)
        : Left<bool>(response.left!);
  }

  FutureEither<bool> hasAuthToken() async {
    Either<String> authorizationToken = await _secureStorage.get(
      key: Constants.authorizationTokenKey,
    );

    return authorizationToken.isRight
        ? Right(
          authorizationToken.isRight && authorizationToken.right!.isNotEmpty,
        )
        : Left<bool>(authorizationToken.left!);
  }

  FutureEither<FCMTokenModel> fcmToken({required FCMTokenParams params}) async {
    Either<Json> response = await _httpClient.post(
      url: 'users/fcm-token',
      data: params.toMap(),
    );

    return response.isRight
        ? Right<FCMTokenModel>(FCMTokenModel.fromMap(response.right!))
        : Left<FCMTokenModel>(response.left!);
  }

  FutureEither<bool> signOut() async {
    Either<bool> response = await _secureStorage.unset(
      key: Constants.authorizationTokenKey,
    );

    return response.isRight ? Right<bool>(true) : Left<bool>(response.left!);
  }

  FutureEither<PaginatedData<UserModel>> index({
    int page = 1,
  }) async {
    Either<PaginatedData<dynamic>> response = await _httpClient.index<PaginatedData<dynamic>>(
      url: 'users',
      queryParams: {'page': page},
      isPaginated: true,
    );

    return response.isRight
        ? Right<PaginatedData<UserModel>>(
            PaginatedData<UserModel>(
              data: UserModel.fromList(response.right!.data),
              meta: response.right!.meta,
            ),
          )
        : Left<PaginatedData<UserModel>>(response.left!);
  }
}
