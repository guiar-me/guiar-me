import 'package:dio/dio.dart';
import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/core/types/json.dart';
import 'package:sdk_flutter/core/types/paginated_data.dart';
import 'package:sdk_flutter/data/contracts/http_client_contract.dart';
import 'package:sdk_flutter/data/repositories/activities/add_activity_params.dart';
import 'package:sdk_flutter/data/repositories/activities/edit_activity_params.dart';
import 'package:sdk_flutter/domain/models/activity_model.dart';

class ActivityRepository {
  final HttpClientContract _httpClient;

  ActivityRepository(this._httpClient);

  FutureEither<PaginatedData<ActivityModel>> index({
    String? category,
    String? city,
    int page = 1,
  }) async {
    Either<PaginatedData<dynamic>> response = await _httpClient
        .index<PaginatedData<dynamic>>(
          url: 'activities',
          queryParams: {'type': category, 'city': city, 'page': page},
          isPaginated: true,
        );

    return response.isRight
        ? Right<PaginatedData<ActivityModel>>(
          PaginatedData<ActivityModel>(
            data: ActivityModel.fromList(response.right!.data),
            meta: response.right!.meta,
          ),
        )
        : Left<PaginatedData<ActivityModel>>(response.left!);
  }

  FutureEither<ActivityModel> get({required String id}) async {
    Either<Json> response = await _httpClient.get(url: 'activities/$id');

    return response.isRight
        ? Right<ActivityModel>(ActivityModel.fromMap(response.right!))
        : Left<ActivityModel>(response.left!);
  }

  FutureEither<ActivityModel> add({required AddActivityParams params}) async {
    FormData formData = FormData.fromMap(params.toMap());

    Either<Json> response = await _httpClient.post(
      url: 'activities',
      data: formData,
    );

    return response.isRight
        ? Right<ActivityModel>(ActivityModel.fromMap(response.right!))
        : Left<ActivityModel>(response.left!);
  }

  FutureEither<bool> edit({required EditActivityParams params}) async {
    FormData formData = FormData.fromMap(params.toMap());

    Either<bool> response = await _httpClient.put(
      url: 'activities/${params.id}',
      data: formData,
    );

    return response.isRight
        ? Right<bool>(response.right!)
        : Left<bool>(response.left!);
  }

  FutureEither<bool> delete({required String id}) async {
    Either<bool> response = await _httpClient.delete(url: 'activities/$id');

    return response.isRight
        ? Right<bool>(response.right!)
        : Left<bool>(response.left!);
  }
}
