import 'package:go_router/go_router.dart';
import 'package:sdk_flutter/controllers/base_controller.dart';
import 'package:sdk_flutter/controllers/contracts/alert.dart';
import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/data/repositories/categories/category_repository.dart';
import 'package:sdk_flutter/domain/models/category_model.dart';
import 'package:mobx/mobx.dart';

part 'category_controller.g.dart';

class CategoryController = CategoryControllerBase with _$CategoryController;

abstract class CategoryControllerBase with Store, BaseController {
  final CategoriesRepository categoriesRepository;
  final AlertContract alert;
  final GoRouter router;

  CategoryControllerBase(this.categoriesRepository, this.alert, this.router);

  @observable
  List<CategoryModel> categories = [];

  @observable
  bool isLoadingIndex = false;

  @action
  void setCategories(List<CategoryModel> data) {
    categories = data;
  }

  @action
  void setIsLoadingIndex(bool loading) {
    isLoadingIndex = loading;
  }

  @action
  Future<void> index() async {
    setIsLoadingIndex(true);

    Either<List<CategoryModel>> categoriesResponse =
        await categoriesRepository.get();

    if (categoriesResponse.isLeft) {
      handleApiError(categoriesResponse.left!, alert, router);

      setIsLoadingIndex(false);
    }

    if (categoriesResponse.isRight) {
      setCategories(categoriesResponse.right!);
      setIsLoadingIndex(false);
    }
  }
}
