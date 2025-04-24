// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FavoriteController on FavoriteControllerBase, Store {
  late final _$favoritesAtom =
      Atom(name: 'FavoriteControllerBase.favorites', context: context);

  @override
  List<FavoriteModel> get favorites {
    _$favoritesAtom.reportRead();
    return super.favorites;
  }

  @override
  set favorites(List<FavoriteModel> value) {
    _$favoritesAtom.reportWrite(value, super.favorites, () {
      super.favorites = value;
    });
  }

  late final _$isLoadingIndexAtom =
      Atom(name: 'FavoriteControllerBase.isLoadingIndex', context: context);

  @override
  bool get isLoadingIndex {
    _$isLoadingIndexAtom.reportRead();
    return super.isLoadingIndex;
  }

  @override
  set isLoadingIndex(bool value) {
    _$isLoadingIndexAtom.reportWrite(value, super.isLoadingIndex, () {
      super.isLoadingIndex = value;
    });
  }

  late final _$isLoadingCreateAtom =
      Atom(name: 'FavoriteControllerBase.isLoadingCreate', context: context);

  @override
  bool get isLoadingCreate {
    _$isLoadingCreateAtom.reportRead();
    return super.isLoadingCreate;
  }

  @override
  set isLoadingCreate(bool value) {
    _$isLoadingCreateAtom.reportWrite(value, super.isLoadingCreate, () {
      super.isLoadingCreate = value;
    });
  }

  late final _$isLoadingDeleteAtom =
      Atom(name: 'FavoriteControllerBase.isLoadingDelete', context: context);

  @override
  bool get isLoadingDelete {
    _$isLoadingDeleteAtom.reportRead();
    return super.isLoadingDelete;
  }

  @override
  set isLoadingDelete(bool value) {
    _$isLoadingDeleteAtom.reportWrite(value, super.isLoadingDelete, () {
      super.isLoadingDelete = value;
    });
  }

  late final _$indexAsyncAction =
      AsyncAction('FavoriteControllerBase.index', context: context);

  @override
  Future<void> index() {
    return _$indexAsyncAction.run(() => super.index());
  }

  late final _$createAsyncAction =
      AsyncAction('FavoriteControllerBase.create', context: context);

  @override
  Future<void> create({required int activityId}) {
    return _$createAsyncAction.run(() => super.create(activityId: activityId));
  }

  late final _$deleteAsyncAction =
      AsyncAction('FavoriteControllerBase.delete', context: context);

  @override
  Future<void> delete({required int activityId}) {
    return _$deleteAsyncAction.run(() => super.delete(activityId: activityId));
  }

  late final _$toogleAsyncAction =
      AsyncAction('FavoriteControllerBase.toogle', context: context);

  @override
  Future<void> toogle({required int activityId}) {
    return _$toogleAsyncAction.run(() => super.toogle(activityId: activityId));
  }

  late final _$FavoriteControllerBaseActionController =
      ActionController(name: 'FavoriteControllerBase', context: context);

  @override
  void setFavorites(List<FavoriteModel> data) {
    final _$actionInfo = _$FavoriteControllerBaseActionController.startAction(
        name: 'FavoriteControllerBase.setFavorites');
    try {
      return super.setFavorites(data);
    } finally {
      _$FavoriteControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingIndex(bool loading) {
    final _$actionInfo = _$FavoriteControllerBaseActionController.startAction(
        name: 'FavoriteControllerBase.setIsLoadingIndex');
    try {
      return super.setIsLoadingIndex(loading);
    } finally {
      _$FavoriteControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingCreate(bool loading) {
    final _$actionInfo = _$FavoriteControllerBaseActionController.startAction(
        name: 'FavoriteControllerBase.setIsLoadingCreate');
    try {
      return super.setIsLoadingCreate(loading);
    } finally {
      _$FavoriteControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingDelete(bool loading) {
    final _$actionInfo = _$FavoriteControllerBaseActionController.startAction(
        name: 'FavoriteControllerBase.setIsLoadingDelete');
    try {
      return super.setIsLoadingDelete(loading);
    } finally {
      _$FavoriteControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
favorites: ${favorites},
isLoadingIndex: ${isLoadingIndex},
isLoadingCreate: ${isLoadingCreate},
isLoadingDelete: ${isLoadingDelete}
    ''';
  }
}
