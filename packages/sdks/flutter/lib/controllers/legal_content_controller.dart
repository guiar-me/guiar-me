import 'package:go_router/go_router.dart';
import 'package:mobx/mobx.dart';
import 'package:sdk_flutter/sdk_flutter.dart';

part 'legal_content_controller.g.dart';

class LegalContentController = LegalContentControllerBase
    with _$LegalContentController;

abstract class LegalContentControllerBase with Store, BaseController {
  final LegalContentsRepository legalContentsRepository;
  final AlertContract alert;
  final GoRouter router;

  LegalContentControllerBase(
    this.legalContentsRepository,
    this.alert,
    this.router,
  );

  @observable
  EditLegalContentBodyParam editLegalContentData = const EditLegalContentBodyParam(
    description: '',
    descriptionHtml: '',
  );

  @observable
  EditLegalContentUrlParam editLegalContentUrl = const EditLegalContentUrlParam(
    type: 0,
  );

  @observable
  LegalContentModel? legalContent;

  @observable
  bool isLoadingEdit = false;

  @observable
  bool isLoadingGet = false;

  @action
  void setEditLegalContentData({
    String? description,
    String? descriptionHtml,
  }) {
    editLegalContentData = editLegalContentData.copyWith(
      description: description,
      descriptionHtml: descriptionHtml,
    );
  }

  @action
  void unsetEditLegalContentData() {
    editLegalContentData = const EditLegalContentBodyParam(
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

    Either<LegalContentModel> response = await legalContentsRepository.findLegalContent(
      urlParams: FindLegalContentUrlParam(
        type: type,
      ),
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

    Either<bool> response = await legalContentsRepository.editLegalContent(
      params: editLegalContentData,
      urlParams: editLegalContentUrl,
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
