import 'package:go_router/go_router.dart';
import 'package:mobx/mobx.dart';
import 'package:sdk_flutter/sdk_flutter.dart';

part 'favorite_controller.g.dart';

class FavoriteController = FavoriteControllerBase with _$FavoriteController;

abstract class FavoriteControllerBase with Store, BaseController {
  final FavoritesRepository favoriteRepository;
  final AlertContract alert;
  final GoRouter router;

  FavoriteControllerBase(this.favoriteRepository, this.alert, this.router);

  @observable
  List<FavoriteModel> favorites = [];

  @observable
  bool isLoadingIndex = false;

  @observable
  bool isLoadingCreate = false;

  @observable
  bool isLoadingDelete = false;

  @action
  void setFavorites(List<FavoriteModel> data) {
    favorites = data;
  }

  @action
  void setIsLoadingIndex(bool loading) {
    isLoadingIndex = loading;
  }

  @action
  void setIsLoadingCreate(bool loading) {
    isLoadingCreate = loading;
  }

  @action
  void setIsLoadingDelete(bool loading) {
    isLoadingDelete = loading;
  }

  @action
  Future<void> index() async {
    setIsLoadingIndex(true);

    Either<PaginatedData<FavoriteModel>> response = await favoriteRepository.listFavorites();

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingIndex(false);
    }

    if (response.isRight) {
      setFavorites(response.right!.data);
      setLastPage(response.right!.meta.lastPage);

      setIsLoadingIndex(false);
    }
  }

  @action
  Future<void> create({required int activityId}) async {
    setIsLoadingCreate(true);

    Either<FavoriteModel> response = await favoriteRepository.addFavorite(
      params: AddFavoriteBodyParam(
        activityId: activityId.toString(),
      ),
    );

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingCreate(false);
    }

    if (response.isRight) {
      setIsLoadingCreate(false);
    }
  }

  @action
  Future<void> delete({required int activityId}) async {
    setIsLoadingDelete(true);

    Either<bool> response = await favoriteRepository.removeFavorite(
      urlParams: RemoveFavoriteUrlParam(
        activityId: activityId,
      ),
    );

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingDelete(false);
    }

    if (response.isRight) {
      setFavorites(
        favorites
            .where((favorite) => favorite.activity.id != activityId)
            .toList(),
      );

      setIsLoadingDelete(false);
    }
  }

  @action
  Future<void> toogle({required int activityId}) async {
    bool isFavorite = favorites.any(
      (favorite) => favorite.activity.id == activityId,
    );

    if (isFavorite) {
      await delete(activityId: activityId);
    }

    if (!isFavorite) {
      await create(activityId: activityId);
    }
  }
}
