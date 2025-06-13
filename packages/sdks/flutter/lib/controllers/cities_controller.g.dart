// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CitiesController on CitiesControllerBase, Store {
  late final _$citiesAtom =
      Atom(name: 'CitiesControllerBase.cities', context: context);

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
      Atom(name: 'CitiesControllerBase.isLoadingIndex', context: context);

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
      AsyncAction('CitiesControllerBase.index', context: context);

  @override
  Future<void> index() {
    return _$indexAsyncAction.run(() => super.index());
  }

  late final _$CitiesControllerBaseActionController =
      ActionController(name: 'CitiesControllerBase', context: context);

  @override
  void setCities(List<CityModel> data) {
    final _$actionInfo = _$CitiesControllerBaseActionController.startAction(
        name: 'CitiesControllerBase.setCities');
    try {
      return super.setCities(data);
    } finally {
      _$CitiesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingIndex(bool loading) {
    final _$actionInfo = _$CitiesControllerBaseActionController.startAction(
        name: 'CitiesControllerBase.setIsLoadingIndex');
    try {
      return super.setIsLoadingIndex(loading);
    } finally {
      _$CitiesControllerBaseActionController.endAction(_$actionInfo);
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
