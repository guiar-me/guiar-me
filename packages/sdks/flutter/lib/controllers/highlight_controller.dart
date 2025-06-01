import 'package:go_router/go_router.dart';
import 'package:sdk_flutter/sdk_flutter.dart';
import 'package:mobx/mobx.dart';

part 'highlight_controller.g.dart';

class HighlightController = HighlightControllerBase with _$HighlightController;

abstract class HighlightControllerBase with Store, BaseController {
  final HighlightsRepository highlightsRepository;
  final AlertContract alert;
  final GoRouter router;

  HighlightControllerBase(this.highlightsRepository, this.alert, this.router);

  @observable
  List<HighlightModel> highlights = [];

  @observable
  bool isLoadingIndex = false;

  @action
  void setHighlights(List<HighlightModel> data) {
    highlights = data;
  }

  @action
  void setIsLoadingIndex(bool loading) {
    isLoadingIndex = loading;
  }

  @action
  Future<void> index() async {
    setIsLoadingIndex(true);

    Either<PaginatedData<HighlightModel>> highlightsResponse =
        await highlightsRepository.listHighlights();

    if (highlightsResponse.isLeft) {
      handleApiError(highlightsResponse.left!, alert, router);

      setIsLoadingIndex(false);
    }

    if (highlightsResponse.isRight) {
      setHighlights(highlightsResponse.right!.data);
      setLastPage(highlightsResponse.right!.meta.lastPage);
      setIsLoadingIndex(false);
    }
  }
}
