import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/data/contracts/http_client_contract.dart';
import 'package:sdk_flutter/domain/models/city_model.dart';

class CitiesRepository {
  final HttpClientContract _httpClient;

  CitiesRepository(this._httpClient);

  FutureEither<List<CityModel>> get() async {
    Either<List<dynamic>> response = await _httpClient.get<List<dynamic>>(
      url: 'api/statics/cities',
    );

    return response.isRight
        ? Right<List<CityModel>>(CityModel.fromList(response.right!))
        : Left<List<CityModel>>(response.left!);
  }
}
