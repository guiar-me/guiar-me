import 'package:go_router/go_router.dart';
import 'package:sdk_flutter/controllers/base_controller.dart';
import 'package:sdk_flutter/controllers/contracts/alert.dart';
import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/data/repositories/highlights/highlight_repository.dart';
import 'package:sdk_flutter/domain/models/highlight_model.dart';
import 'package:mobx/mobx.dart';

part 'highlight_controller.g.dart';

class HighlightController = HighlightControllerBase with _$HighlightController;

abstract class HighlightControllerBase with Store, BaseController {
  final HighlightRepository highlightRepository;
  final AlertContract alert;
  final GoRouter router;

  HighlightControllerBase(this.highlightRepository, this.alert, this.router);

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

    Either<List<HighlightModel>> highlightsResponse =
        await highlightRepository.index();

    if (highlightsResponse.isLeft) {
      handleApiError(highlightsResponse.left!, alert, router);

      setIsLoadingIndex(false);
    }

    if (highlightsResponse.isRight) {
      setHighlights(highlightsResponse.right!);
      setIsLoadingIndex(false);
    }
  }
}
