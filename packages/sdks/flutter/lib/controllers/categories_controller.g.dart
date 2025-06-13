// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CategoriesController on CategoriesControllerBase, Store {
  late final _$categoriesAtom =
      Atom(name: 'CategoriesControllerBase.categories', context: context);

  @override
  List<CategoryModel> get categories {
    _$categoriesAtom.reportRead();
    return super.categories;
  }

  @override
  set categories(List<CategoryModel> value) {
    _$categoriesAtom.reportWrite(value, super.categories, () {
      super.categories = value;
    });
  }

  late final _$isLoadingIndexAtom =
      Atom(name: 'CategoriesControllerBase.isLoadingIndex', context: context);

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

  late final _$indexAsyncAction =
      AsyncAction('CategoriesControllerBase.index', context: context);

  @override
  Future<void> index() {
    return _$indexAsyncAction.run(() => super.index());
  }

  late final _$CategoriesControllerBaseActionController =
      ActionController(name: 'CategoriesControllerBase', context: context);

  @override
  void setCategories(List<CategoryModel> data) {
    final _$actionInfo = _$CategoriesControllerBaseActionController.startAction(
        name: 'CategoriesControllerBase.setCategories');
    try {
      return super.setCategories(data);
    } finally {
      _$CategoriesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingIndex(bool loading) {
    final _$actionInfo = _$CategoriesControllerBaseActionController.startAction(
        name: 'CategoriesControllerBase.setIsLoadingIndex');
    try {
      return super.setIsLoadingIndex(loading);
    } finally {
      _$CategoriesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
categories: ${categories},
isLoadingIndex: ${isLoadingIndex}
    ''';
  }
}
