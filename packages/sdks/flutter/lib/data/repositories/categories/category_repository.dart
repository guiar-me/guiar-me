import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/data/contracts/http_client_contract.dart';
import 'package:sdk_flutter/domain/models/category_model.dart';

class CategoryRepository {
  final HttpClientContract _httpClient;

  CategoryRepository(this._httpClient);

  FutureEither<List<CategoryModel>> index() async {
    Either<List<dynamic>> response = await _httpClient.index<List<dynamic>>(
      url: 'statics/categories',
    );

    return response.isRight
        ? Right<List<CategoryModel>>(CategoryModel.fromList(response.right!))
        : Left<List<CategoryModel>>(response.left!);
  }
}
