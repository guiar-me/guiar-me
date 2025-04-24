import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/core/types/json.dart';
import 'package:sdk_flutter/core/types/paginated_data.dart';
import 'package:sdk_flutter/data/contracts/http_client_contract.dart';
import 'package:sdk_flutter/domain/models/favorite_model.dart';

class FavoriteRepository {
  final HttpClientContract _httpClient;

  FavoriteRepository(this._httpClient);

  FutureEither<List<FavoriteModel>> index() async {
    Either<PaginatedData<dynamic>> response = await _httpClient
        .index<PaginatedData<dynamic>>(url: 'favorites', isPaginated: true);

    return response.isRight
        ? Right<List<FavoriteModel>>(
          FavoriteModel.fromList(response.right!.data),
        )
        : Left<List<FavoriteModel>>(response.left!);
  }

  FutureEither<FavoriteModel> add({required int activityId}) async {
    Either<Json> response = await _httpClient.post(
      url: 'favorites',
      data: {'activity_id': activityId},
    );

    return response.isRight
        ? Right<FavoriteModel>(FavoriteModel.fromMap(response.right!))
        : Left<FavoriteModel>(response.left!);
  }

  FutureEither<bool> delete({required int activityId}) async {
    Either<bool> response = await _httpClient.delete(
      url: 'favorites/$activityId',
    );

    return response.isRight
        ? Right<bool>(response.right!)
        : Left<bool>(response.left!);
  }
}
