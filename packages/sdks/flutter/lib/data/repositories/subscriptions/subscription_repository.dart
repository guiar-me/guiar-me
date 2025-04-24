import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/core/types/json.dart';
import 'package:sdk_flutter/data/contracts/http_client_contract.dart';
import 'package:sdk_flutter/data/repositories/subscriptions/add_subscription_params.dart';
import 'package:sdk_flutter/domain/models/subscription_model.dart';

class SubscriptionRepository {
  final HttpClientContract _httpClient;

  SubscriptionRepository(this._httpClient);

  FutureEither<SubscriptionModel> get({required String id}) async {
    Either<Json> response = await _httpClient.get(url: 'subscriptions/$id');

    return response.isRight
        ? Right<SubscriptionModel>(SubscriptionModel.fromMap(response.right!))
        : Left<SubscriptionModel>(response.left!);
  }

  FutureEither<SubscriptionModel> create({
    required CreateSubscriptionParams params,
  }) async {
    Either<Json> response = await _httpClient.post(
      url: 'subscriptions',
      data: params.toMap(),
    );

    return response.isRight
        ? Right<SubscriptionModel>(SubscriptionModel.fromMap(response.right!))
        : Left<SubscriptionModel>(response.left!);
  }
}
