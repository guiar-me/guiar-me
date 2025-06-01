import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/data/contracts/http_client_contract.dart';
import 'package:sdk_flutter/domain/models/category_model.dart';

class CategoriesRepository {
  final HttpClientContract _httpClient;

  CategoriesRepository(this._httpClient);

  FutureEither<List<CategoryModel>> get() async {
    Either<List<dynamic>> response = await _httpClient.get<List<dynamic>>(
      url: 'api/statics/categories',
    );

    return response.isRight
        ? Right<List<CategoryModel>>(CategoryModel.fromList(response.right!))
        : Left<List<CategoryModel>>(response.left!);
  }
}
