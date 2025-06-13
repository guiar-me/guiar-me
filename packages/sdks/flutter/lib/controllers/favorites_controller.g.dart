// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FavoritesController on FavoritesControllerBase, Store {
  late final _$currentPageAtom =
      Atom(name: 'FavoritesControllerBase.currentPage', context: context);

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  late final _$lastPageAtom =
      Atom(name: 'FavoritesControllerBase.lastPage', context: context);

  @override
  int get lastPage {
    _$lastPageAtom.reportRead();
    return super.lastPage;
  }

  @override
  set lastPage(int value) {
    _$lastPageAtom.reportWrite(value, super.lastPage, () {
      super.lastPage = value;
    });
  }

  late final _$listFavoriteAtom =
      Atom(name: 'FavoritesControllerBase.listFavorite', context: context);

  @override
  List<FavoriteModel> get listFavorite {
    _$listFavoriteAtom.reportRead();
    return super.listFavorite;
  }

  @override
  set listFavorite(List<FavoriteModel> value) {
    _$listFavoriteAtom.reportWrite(value, super.listFavorite, () {
      super.listFavorite = value;
    });
  }

  late final _$favoriteAtom =
      Atom(name: 'FavoritesControllerBase.favorite', context: context);

  @override
  FavoriteModel get favorite {
    _$favoriteAtom.reportRead();
    return super.favorite;
  }

  bool _favoriteIsInitialized = false;

  @override
  set favorite(FavoriteModel value) {
    _$favoriteAtom
        .reportWrite(value, _favoriteIsInitialized ? super.favorite : null, () {
      super.favorite = value;
      _favoriteIsInitialized = true;
    });
  }

  late final _$removeFavoriteUrlParamAtom = Atom(
      name: 'FavoritesControllerBase.removeFavoriteUrlParam', context: context);

  @override
  RemoveFavoriteUrlParam get removeFavoriteUrlParam {
    _$removeFavoriteUrlParamAtom.reportRead();
    return super.removeFavoriteUrlParam;
  }

  bool _removeFavoriteUrlParamIsInitialized = false;

  @override
  set removeFavoriteUrlParam(RemoveFavoriteUrlParam value) {
    _$removeFavoriteUrlParamAtom.reportWrite(
        value,
        _removeFavoriteUrlParamIsInitialized
            ? super.removeFavoriteUrlParam
            : null, () {
      super.removeFavoriteUrlParam = value;
      _removeFavoriteUrlParamIsInitialized = true;
    });
  }

  late final _$addFavoriteBodyParamAtom = Atom(
      name: 'FavoritesControllerBase.addFavoriteBodyParam', context: context);

  @override
  AddFavoriteBodyParam get addFavoriteBodyParam {
    _$addFavoriteBodyParamAtom.reportRead();
    return super.addFavoriteBodyParam;
  }

  bool _addFavoriteBodyParamIsInitialized = false;

  @override
  set addFavoriteBodyParam(AddFavoriteBodyParam value) {
    _$addFavoriteBodyParamAtom.reportWrite(value,
        _addFavoriteBodyParamIsInitialized ? super.addFavoriteBodyParam : null,
        () {
      super.addFavoriteBodyParam = value;
      _addFavoriteBodyParamIsInitialized = true;
    });
  }

  late final _$isLoadingNextPageAtom =
      Atom(name: 'FavoritesControllerBase.isLoadingNextPage', context: context);

  @override
  bool get isLoadingNextPage {
    _$isLoadingNextPageAtom.reportRead();
    return super.isLoadingNextPage;
  }

  @override
  set isLoadingNextPage(bool value) {
    _$isLoadingNextPageAtom.reportWrite(value, super.isLoadingNextPage, () {
      super.isLoadingNextPage = value;
    });
  }

  late final _$isLoadingRemoveFavoriteAtom = Atom(
      name: 'FavoritesControllerBase.isLoadingRemoveFavorite',
      context: context);

  @override
  bool get isLoadingRemoveFavorite {
    _$isLoadingRemoveFavoriteAtom.reportRead();
    return super.isLoadingRemoveFavorite;
  }

  @override
  set isLoadingRemoveFavorite(bool value) {
    _$isLoadingRemoveFavoriteAtom
        .reportWrite(value, super.isLoadingRemoveFavorite, () {
      super.isLoadingRemoveFavorite = value;
    });
  }

  late final _$isLoadingListFavoritesAtom = Atom(
      name: 'FavoritesControllerBase.isLoadingListFavorites', context: context);

  @override
  bool get isLoadingListFavorites {
    _$isLoadingListFavoritesAtom.reportRead();
    return super.isLoadingListFavorites;
  }

  @override
  set isLoadingListFavorites(bool value) {
    _$isLoadingListFavoritesAtom
        .reportWrite(value, super.isLoadingListFavorites, () {
      super.isLoadingListFavorites = value;
    });
  }

  late final _$isLoadingAddFavoriteAtom = Atom(
      name: 'FavoritesControllerBase.isLoadingAddFavorite', context: context);

  @override
  bool get isLoadingAddFavorite {
    _$isLoadingAddFavoriteAtom.reportRead();
    return super.isLoadingAddFavorite;
  }

  @override
  set isLoadingAddFavorite(bool value) {
    _$isLoadingAddFavoriteAtom.reportWrite(value, super.isLoadingAddFavorite,
        () {
      super.isLoadingAddFavorite = value;
    });
  }

  late final _$removeFavoriteAsyncAction =
      AsyncAction('FavoritesControllerBase.removeFavorite', context: context);

  @override
  Future<void> removeFavorite() {
    return _$removeFavoriteAsyncAction.run(() => super.removeFavorite());
  }

  late final _$listFavoritesAsyncAction =
      AsyncAction('FavoritesControllerBase.listFavorites', context: context);

  @override
  Future<void> listFavorites() {
    return _$listFavoritesAsyncAction.run(() => super.listFavorites());
  }

  late final _$addFavoriteAsyncAction =
      AsyncAction('FavoritesControllerBase.addFavorite', context: context);

  @override
  Future<void> addFavorite() {
    return _$addFavoriteAsyncAction.run(() => super.addFavorite());
  }

  late final _$FavoritesControllerBaseActionController =
      ActionController(name: 'FavoritesControllerBase', context: context);

  @override
  void setCurrentPage(int data) {
    final _$actionInfo = _$FavoritesControllerBaseActionController.startAction(
        name: 'FavoritesControllerBase.setCurrentPage');
    try {
      return super.setCurrentPage(data);
    } finally {
      _$FavoritesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLastPage(int data) {
    final _$actionInfo = _$FavoritesControllerBaseActionController.startAction(
        name: 'FavoritesControllerBase.setLastPage');
    try {
      return super.setLastPage(data);
    } finally {
      _$FavoritesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setListFavorite(List<FavoriteModel> data) {
    final _$actionInfo = _$FavoritesControllerBaseActionController.startAction(
        name: 'FavoritesControllerBase.setListFavorite');
    try {
      return super.setListFavorite(data);
    } finally {
      _$FavoritesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFavorite(FavoriteModel data) {
    final _$actionInfo = _$FavoritesControllerBaseActionController.startAction(
        name: 'FavoritesControllerBase.setFavorite');
    try {
      return super.setFavorite(data);
    } finally {
      _$FavoritesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRemoveFavoriteUrlParam(RemoveFavoriteUrlParam data) {
    final _$actionInfo = _$FavoritesControllerBaseActionController.startAction(
        name: 'FavoritesControllerBase.setRemoveFavoriteUrlParam');
    try {
      return super.setRemoveFavoriteUrlParam(data);
    } finally {
      _$FavoritesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAddFavoriteBodyParam(AddFavoriteBodyParam data) {
    final _$actionInfo = _$FavoritesControllerBaseActionController.startAction(
        name: 'FavoritesControllerBase.setAddFavoriteBodyParam');
    try {
      return super.setAddFavoriteBodyParam(data);
    } finally {
      _$FavoritesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingNextPage(bool isLoading) {
    final _$actionInfo = _$FavoritesControllerBaseActionController.startAction(
        name: 'FavoritesControllerBase.setIsLoadingNextPage');
    try {
      return super.setIsLoadingNextPage(isLoading);
    } finally {
      _$FavoritesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingRemoveFavorite(bool isLoading) {
    final _$actionInfo = _$FavoritesControllerBaseActionController.startAction(
        name: 'FavoritesControllerBase.setIsLoadingRemoveFavorite');
    try {
      return super.setIsLoadingRemoveFavorite(isLoading);
    } finally {
      _$FavoritesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingListFavorites(bool isLoading) {
    final _$actionInfo = _$FavoritesControllerBaseActionController.startAction(
        name: 'FavoritesControllerBase.setIsLoadingListFavorites');
    try {
      return super.setIsLoadingListFavorites(isLoading);
    } finally {
      _$FavoritesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingAddFavorite(bool isLoading) {
    final _$actionInfo = _$FavoritesControllerBaseActionController.startAction(
        name: 'FavoritesControllerBase.setIsLoadingAddFavorite');
    try {
      return super.setIsLoadingAddFavorite(isLoading);
    } finally {
      _$FavoritesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
lastPage: ${lastPage},
listFavorite: ${listFavorite},
favorite: ${favorite},
removeFavoriteUrlParam: ${removeFavoriteUrlParam},
addFavoriteBodyParam: ${addFavoriteBodyParam},
isLoadingNextPage: ${isLoadingNextPage},
isLoadingRemoveFavorite: ${isLoadingRemoveFavorite},
isLoadingListFavorites: ${isLoadingListFavorites},
isLoadingAddFavorite: ${isLoadingAddFavorite}
    ''';
  }
}
