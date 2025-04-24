// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CityController on CityControllerBase, Store {
  late final _$citiesAtom =
      Atom(name: 'CityControllerBase.cities', context: context);

  @override
  List<CityModel> get cities {
    _$citiesAtom.reportRead();
    return super.cities;
  }

  @override
  set cities(List<CityModel> value) {
    _$citiesAtom.reportWrite(value, super.cities, () {
      super.cities = value;
    });
  }

  late final _$isLoadingIndexAtom =
      Atom(name: 'CityControllerBase.isLoadingIndex', context: context);

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
      AsyncAction('CityControllerBase.index', context: context);

  @override
  Future<void> index() {
    return _$indexAsyncAction.run(() => super.index());
  }

  late final _$CityControllerBaseActionController =
      ActionController(name: 'CityControllerBase', context: context);

  @override
  void setCities(List<CityModel> data) {
    final _$actionInfo = _$CityControllerBaseActionController.startAction(
        name: 'CityControllerBase.setCities');
    try {
      return super.setCities(data);
    } finally {
      _$CityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingIndex(bool loading) {
    final _$actionInfo = _$CityControllerBaseActionController.startAction(
        name: 'CityControllerBase.setIsLoadingIndex');
    try {
      return super.setIsLoadingIndex(loading);
    } finally {
      _$CityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cities: ${cities},
isLoadingIndex: ${isLoadingIndex}
    ''';
  }
}
