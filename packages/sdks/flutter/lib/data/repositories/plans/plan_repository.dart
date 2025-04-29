import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/core/types/json.dart';
import 'package:sdk_flutter/core/types/paginated_data.dart';
import 'package:sdk_flutter/data/contracts/http_client_contract.dart';
import 'package:sdk_flutter/data/repositories/plans/add_plan_params.dart';
import 'package:sdk_flutter/data/repositories/plans/edit_plan_params.dart';
import 'package:sdk_flutter/domain/models/plan_model.dart';

class PlanRepository {
  final HttpClientContract _httpClient;

  PlanRepository(this._httpClient);

  FutureEither<PaginatedData<PlanModel>> index() async {
    Either<PaginatedData<dynamic>> response = await _httpClient
        .index<PaginatedData<dynamic>>(url: 'plans', isPaginated: true);

    return response.isRight
        ? Right<PaginatedData<PlanModel>>(
          PaginatedData<PlanModel>(
            data: PlanModel.fromList(response.right!.data),
            meta: response.right!.meta,
          ),
        )
        : Left<PaginatedData<PlanModel>>(response.left!);
  }

  FutureEither<PlanModel> get({required String id}) async {
    Either<Json> response = await _httpClient.get(url: 'plans/$id');

    return response.isRight
        ? Right<PlanModel>(PlanModel.fromMap(response.right!))
        : Left<PlanModel>(response.left!);
  }

  FutureEither<PlanModel> add({required AddPlanParams params}) async {
    Either<Json> response = await _httpClient.post(
      url: 'plans',
      data: params.toMap(),
    );

    return response.isRight
        ? Right<PlanModel>(PlanModel.fromMap(response.right!))
        : Left<PlanModel>(response.left!);
  }

  FutureEither<bool> edit({required EditPlanParams params}) async {
    Either<bool> response = await _httpClient.put(
      url: 'plans/${params.id}',
      data: params.toMap(),
    );

    return response.isRight
        ? Right<bool>(response.right!)
        : Left<bool>(response.left!);
  }
}
