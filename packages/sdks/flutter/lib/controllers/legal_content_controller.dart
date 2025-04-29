import 'package:go_router/go_router.dart';
import 'package:sdk_flutter/controllers/base_controller.dart';
import 'package:sdk_flutter/controllers/contracts/alert.dart';
import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/data/repositories/legal_contents/edit_legal_content_params.dart';
import 'package:sdk_flutter/data/repositories/legal_contents/legal_content_repository.dart';
import 'package:sdk_flutter/domain/models/legal_content_model.dart';
import 'package:mobx/mobx.dart';

part 'legal_content_controller.g.dart';

class LegalContentController = LegalContentControllerBase
    with _$LegalContentController;

abstract class LegalContentControllerBase with Store, BaseController {
  final LegalContentRepository legalContentRepository;
  final AlertContract alert;
  final GoRouter router;

  LegalContentControllerBase(
    this.legalContentRepository,
    this.alert,
    this.router,
  );

  @observable
  EditLegalContentParams editLegalContentData = const EditLegalContentParams(
    id: 0,
    type: '',
    description: '',
    descriptionHtml: '',
  );

  @observable
  LegalContentModel? legalContent;

  @observable
  bool isLoadingEdit = false;

  @observable
  bool isLoadingGet = false;

  @action
  void setEditLegalContentData({
    int? id,
    String? type,
    String? description,
    String? descriptionHtml,
  }) {
    editLegalContentData = editLegalContentData.copyWith(
      id: id,
      type: type,
      description: description,
      descriptionHtml: descriptionHtml,
    );
  }

  @action
  void unsetEditLegalContentData() {
    editLegalContentData = const EditLegalContentParams(
      id: 0,
      type: '',
      description: '',
      descriptionHtml: '',
    );
  }

  @action
  void setLegalContent(LegalContentModel legalContent) {
    this.legalContent = legalContent;
  }

  @action
  void setIsLoadingGet(bool loading) {
    isLoadingGet = loading;
  }

  @action
  void setIsLoadingEdit(bool loading) {
    isLoadingEdit = loading;
  }

  @action
  Future<void> get(String type) async {
    setIsLoadingGet(true);

    Either<LegalContentModel> response = await legalContentRepository.get(
      type: type,
    );

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingGet(false);
    }

    if (response.isRight) {
      setLegalContent(response.right!);

      setIsLoadingGet(false);
    }
  }

  @action
  Future<void> edit(String successMessage) async {
    setIsLoadingEdit(true);

    Either<bool> response = await legalContentRepository.edit(
      params: editLegalContentData,
    );

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingEdit(false);
    }

    if (response.isRight) {
      unsetEditLegalContentData();

      setIsLoadingEdit(false);

      router.push('/legal-content');
    }
  }
}
