import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/data/contracts/http_client_contract.dart';
import 'package:sdk_flutter/domain/models/highlight_model.dart';

class HighlightRepository {
  final HttpClientContract _httpClient;

  HighlightRepository(this._httpClient);

  FutureEither<List<HighlightModel>> index() async {
    Either<List<dynamic>> response = await _httpClient.index<List<dynamic>>(
      url: 'highlights',
      isPaginated: false,
    );

    return response.isRight
        ? Right<List<HighlightModel>>(HighlightModel.fromList(response.right!))
        : Left<List<HighlightModel>>(response.left!);
  }
}
