import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/data/contracts/http_client_contract.dart';
import 'package:sdk_flutter/domain/models/city_model.dart';

class CityRepository {
  final HttpClientContract _httpClient;

  CityRepository(this._httpClient);

  FutureEither<List<CityModel>> index() async {
    Either<List<dynamic>> response = await _httpClient.index<List<dynamic>>(
      url: 'statics/cities',
    );

    return response.isRight
        ? Right<List<CityModel>>(CityModel.fromList(response.right!))
        : Left<List<CityModel>>(response.left!);
  }
}
