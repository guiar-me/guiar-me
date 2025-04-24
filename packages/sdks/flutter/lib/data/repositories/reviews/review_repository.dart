import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/core/types/json.dart';
import 'package:sdk_flutter/core/types/paginated_data.dart';
import 'package:sdk_flutter/data/contracts/http_client_contract.dart';
import 'package:sdk_flutter/domain/models/review_model.dart';
import 'package:sdk_flutter/data/repositories/reviews/add_review_params.dart';

class ReviewRepository {
  final HttpClientContract _httpClient;

  ReviewRepository(this._httpClient);

  FutureEither<List<ReviewModel>> index({int? activityId}) async {
    Either<PaginatedData<dynamic>> response = await _httpClient.index(
      url: 'reviews',
      queryParams: {'activity_id': activityId},
      isPaginated: true,
    );

    return response.isRight
        ? Right<List<ReviewModel>>(ReviewModel.fromList(response.right!.data))
        : Left<List<ReviewModel>>(response.left!);
  }

  FutureEither<ReviewModel> add({required AddReviewParams params}) async {
    Either<Json> response = await _httpClient.post(
      url: 'reviews',
      data: params.toMap(),
    );

    return response.isRight
        ? Right<ReviewModel>(ReviewModel.fromMap(response.right!))
        : Left<ReviewModel>(response.left!);
  }
}
