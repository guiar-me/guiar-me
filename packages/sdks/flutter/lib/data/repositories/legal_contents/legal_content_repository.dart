import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/core/types/json.dart';
import 'package:sdk_flutter/data/contracts/http_client_contract.dart';
import 'package:sdk_flutter/data/repositories/legal_contents/edit_legal_content_params.dart';
import 'package:sdk_flutter/domain/models/legal_content_model.dart';

class LegalContentRepository {
  final HttpClientContract _httpClient;

  LegalContentRepository(this._httpClient);

  FutureEither<bool> edit({required EditLegalContentParams params}) async {
    Either<bool> response = await _httpClient.put(
      url: 'legal-contents/${params.type}',
      data: params.toMap(),
    );

    return response.isRight
        ? Right<bool>(response.right!)
        : Left<bool>(response.left!);
  }

  FutureEither<LegalContentModel> get({required String type}) async {
    Either<Json> response = await _httpClient.get(url: 'legal-contents/$type');

    return response.isRight
        ? Right<LegalContentModel>(LegalContentModel.fromMap(response.right!))
        : Left<LegalContentModel>(response.left!);
  }
}
