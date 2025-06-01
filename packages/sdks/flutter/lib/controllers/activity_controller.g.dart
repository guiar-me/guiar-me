// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ActivityController on ActivityControllerBase, Store {
  late final _$addActivityDataAtom =
      Atom(name: 'ActivityControllerBase.addActivityData', context: context);

  @override
  AddActivityBodyParam get addActivityData {
    _$addActivityDataAtom.reportRead();
    return super.addActivityData;
  }

  @override
  set addActivityData(AddActivityBodyParam value) {
    _$addActivityDataAtom.reportWrite(value, super.addActivityData, () {
      super.addActivityData = value;
    });
  }

  late final _$editActivityDataAtom =
      Atom(name: 'ActivityControllerBase.editActivityData', context: context);

  @override
  EditActivityBodyParam get editActivityData {
    _$editActivityDataAtom.reportRead();
    return super.editActivityData;
  }

  @override
  set editActivityData(EditActivityBodyParam value) {
    _$editActivityDataAtom.reportWrite(value, super.editActivityData, () {
      super.editActivityData = value;
    });
  }

  late final _$editActivityUrlParamsAtom = Atom(
      name: 'ActivityControllerBase.editActivityUrlParams', context: context);

  @override
  EditActivityUrlParam get editActivityUrlParams {
    _$editActivityUrlParamsAtom.reportRead();
    return super.editActivityUrlParams;
  }

  @override
  set editActivityUrlParams(EditActivityUrlParam value) {
    _$editActivityUrlParamsAtom.reportWrite(value, super.editActivityUrlParams,
        () {
      super.editActivityUrlParams = value;
    });
  }

  late final _$findActivityUrlParamsAtom = Atom(
      name: 'ActivityControllerBase.findActivityUrlParams', context: context);

  @override
  FindActivityUrlParam get findActivityUrlParams {
    _$findActivityUrlParamsAtom.reportRead();
    return super.findActivityUrlParams;
  }

  @override
  set findActivityUrlParams(FindActivityUrlParam value) {
    _$findActivityUrlParamsAtom.reportWrite(value, super.findActivityUrlParams,
        () {
      super.findActivityUrlParams = value;
    });
  }

  late final _$removeActivityUrlParamsAtom = Atom(
      name: 'ActivityControllerBase.removeActivityUrlParams', context: context);

  @override
  RemoveActivityUrlParam get removeActivityUrlParams {
    _$removeActivityUrlParamsAtom.reportRead();
    return super.removeActivityUrlParams;
  }

  @override
  set removeActivityUrlParams(RemoveActivityUrlParam value) {
    _$removeActivityUrlParamsAtom
        .reportWrite(value, super.removeActivityUrlParams, () {
      super.removeActivityUrlParams = value;
    });
  }

  late final _$listActivitiesQueryParamsAtom = Atom(
      name: 'ActivityControllerBase.listActivitiesQueryParams',
      context: context);

  @override
  ListActivitiesQueryParam get listActivitiesQueryParams {
    _$listActivitiesQueryParamsAtom.reportRead();
    return super.listActivitiesQueryParams;
  }

  @override
  set listActivitiesQueryParams(ListActivitiesQueryParam value) {
    _$listActivitiesQueryParamsAtom
        .reportWrite(value, super.listActivitiesQueryParams, () {
      super.listActivitiesQueryParams = value;
    });
  }

  late final _$imageNameAtom =
      Atom(name: 'ActivityControllerBase.imageName', context: context);

  @override
  String? get imageName {
    _$imageNameAtom.reportRead();
    return super.imageName;
  }

  @override
  set imageName(String? value) {
    _$imageNameAtom.reportWrite(value, super.imageName, () {
      super.imageName = value;
    });
  }

  late final _$imageBytesAtom =
      Atom(name: 'ActivityControllerBase.imageBytes', context: context);

  @override
  Uint8List? get imageBytes {
    _$imageBytesAtom.reportRead();
    return super.imageBytes;
  }

  @override
  set imageBytes(Uint8List? value) {
    _$imageBytesAtom.reportWrite(value, super.imageBytes, () {
      super.imageBytes = value;
    });
  }

  late final _$activitiesAtom =
      Atom(name: 'ActivityControllerBase.activities', context: context);

  @override
  List<ActivityModel> get activities {
    _$activitiesAtom.reportRead();
    return super.activities;
  }

  @override
  set activities(List<ActivityModel> value) {
    _$activitiesAtom.reportWrite(value, super.activities, () {
      super.activities = value;
    });
  }

  late final _$activityAtom =
      Atom(name: 'ActivityControllerBase.activity', context: context);

  @override
  ActivityModel? get activity {
    _$activityAtom.reportRead();
    return super.activity;
  }

  @override
  set activity(ActivityModel? value) {
    _$activityAtom.reportWrite(value, super.activity, () {
      super.activity = value;
    });
  }

  late final _$categoryAtom =
      Atom(name: 'ActivityControllerBase.category', context: context);

  @override
  String? get category {
    _$categoryAtom.reportRead();
    return super.category;
  }

  @override
  set category(String? value) {
    _$categoryAtom.reportWrite(value, super.category, () {
      super.category = value;
    });
  }

  late final _$cityAtom =
      Atom(name: 'ActivityControllerBase.city', context: context);

  @override
  String? get city {
    _$cityAtom.reportRead();
    return super.city;
  }

  @override
  set city(String? value) {
    _$cityAtom.reportWrite(value, super.city, () {
      super.city = value;
    });
  }

  late final _$isLoadingIndexAtom =
      Atom(name: 'ActivityControllerBase.isLoadingIndex', context: context);

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

  late final _$isLoadingAddAtom =
      Atom(name: 'ActivityControllerBase.isLoadingAdd', context: context);

  @override
  bool get isLoadingAdd {
    _$isLoadingAddAtom.reportRead();
    return super.isLoadingAdd;
  }

  @override
  set isLoadingAdd(bool value) {
    _$isLoadingAddAtom.reportWrite(value, super.isLoadingAdd, () {
      super.isLoadingAdd = value;
    });
  }

  late final _$isLoadingEditAtom =
      Atom(name: 'ActivityControllerBase.isLoadingEdit', context: context);

  @override
  bool get isLoadingEdit {
    _$isLoadingEditAtom.reportRead();
    return super.isLoadingEdit;
  }

  @override
  set isLoadingEdit(bool value) {
    _$isLoadingEditAtom.reportWrite(value, super.isLoadingEdit, () {
      super.isLoadingEdit = value;
    });
  }

  late final _$isLoadingGetAtom =
      Atom(name: 'ActivityControllerBase.isLoadingGet', context: context);

  @override
  bool get isLoadingGet {
    _$isLoadingGetAtom.reportRead();
    return super.isLoadingGet;
  }

  @override
  set isLoadingGet(bool value) {
    _$isLoadingGetAtom.reportWrite(value, super.isLoadingGet, () {
      super.isLoadingGet = value;
    });
  }

  late final _$isLoadingDeleteAtom =
      Atom(name: 'ActivityControllerBase.isLoadingDelete', context: context);

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
      AsyncAction('ActivityControllerBase.index', context: context);

  @override
  Future<void> index({String? category, String? city}) {
    return _$indexAsyncAction
        .run(() => super.index(category: category, city: city));
  }

  late final _$addAsyncAction =
      AsyncAction('ActivityControllerBase.add', context: context);

  @override
  Future<void> add() {
    return _$addAsyncAction.run(() => super.add());
  }

  late final _$editAsyncAction =
      AsyncAction('ActivityControllerBase.edit', context: context);

  @override
  Future<void> edit() {
    return _$editAsyncAction.run(() => super.edit());
  }

  late final _$getAsyncAction =
      AsyncAction('ActivityControllerBase.get', context: context);

  @override
  Future<void> get() {
    return _$getAsyncAction.run(() => super.get());
  }

  late final _$deleteAsyncAction =
      AsyncAction('ActivityControllerBase.delete', context: context);

  @override
  Future<void> delete() {
    return _$deleteAsyncAction.run(() => super.delete());
  }

  late final _$ActivityControllerBaseActionController =
      ActionController(name: 'ActivityControllerBase', context: context);

  @override
  void setAddActivityData(
      {String? name,
      String? description,
      String? category,
      bool? isVerified,
      String? state,
      String? city,
      String? neighborhood,
      String? address,
      String? number,
      String? complement}) {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.setAddActivityData');
    try {
      return super.setAddActivityData(
          name: name,
          description: description,
          category: category,
          isVerified: isVerified,
          state: state,
          city: city,
          neighborhood: neighborhood,
          address: address,
          number: number,
          complement: complement);
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unsetAddActivityData() {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.unsetAddActivityData');
    try {
      return super.unsetAddActivityData();
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEditActivityData(
      {int? id,
      String? name,
      String? description,
      String? category,
      bool? isVerified,
      int? addressId,
      String? addressState,
      String? addressCity,
      String? addressNeighborhood,
      String? addressAddress,
      String? addressNumber,
      String? addressComplement}) {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.setEditActivityData');
    try {
      return super.setEditActivityData(
          id: id,
          name: name,
          description: description,
          category: category,
          isVerified: isVerified,
          addressId: addressId,
          addressState: addressState,
          addressCity: addressCity,
          addressNeighborhood: addressNeighborhood,
          addressAddress: addressAddress,
          addressNumber: addressNumber,
          addressComplement: addressComplement);
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unsetEditActivityData() {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.unsetEditActivityData');
    try {
      return super.unsetEditActivityData();
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEditActivityUrlParams({int? activityId}) {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.setEditActivityUrlParams');
    try {
      return super.setEditActivityUrlParams(activityId: activityId);
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unsetEditActivityUrlParams() {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.unsetEditActivityUrlParams');
    try {
      return super.unsetEditActivityUrlParams();
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFindActivityUrlParams({int? activityId}) {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.setFindActivityUrlParams');
    try {
      return super.setFindActivityUrlParams(activityId: activityId);
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unsetFindActivityUrlParams() {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.unsetFindActivityUrlParams');
    try {
      return super.unsetFindActivityUrlParams();
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRemoveActivityUrlParams({int? activityId}) {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.setRemoveActivityUrlParams');
    try {
      return super.setRemoveActivityUrlParams(activityId: activityId);
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unsetRemoveActivityUrlParams() {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.unsetRemoveActivityUrlParams');
    try {
      return super.unsetRemoveActivityUrlParams();
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setListActivitiesQueryParams(
      {int? page, String? category, String? city}) {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.setListActivitiesQueryParams');
    try {
      return super.setListActivitiesQueryParams(
          page: page, category: category, city: city);
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unsetListActivitiesQueryParams() {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.unsetListActivitiesQueryParams');
    try {
      return super.unsetListActivitiesQueryParams();
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setImageName(String data) {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.setImageName');
    try {
      return super.setImageName(data);
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setImageBytes(Uint8List data) {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.setImageBytes');
    try {
      return super.setImageBytes(data);
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setActivities(List<ActivityModel> data) {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.setActivities');
    try {
      return super.setActivities(data);
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setActivity(ActivityModel data) {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.setActivity');
    try {
      return super.setActivity(data);
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unsetActivity() {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.unsetActivity');
    try {
      return super.unsetActivity();
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCategory(String? data) {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.setCategory');
    try {
      return super.setCategory(data);
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCity(String? data) {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.setCity');
    try {
      return super.setCity(data);
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingIndex(bool loading) {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.setIsLoadingIndex');
    try {
      return super.setIsLoadingIndex(loading);
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingAdd(bool loading) {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.setIsLoadingAdd');
    try {
      return super.setIsLoadingAdd(loading);
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingEdit(bool loading) {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.setIsLoadingEdit');
    try {
      return super.setIsLoadingEdit(loading);
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingGet(bool loading) {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.setIsLoadingGet');
    try {
      return super.setIsLoadingGet(loading);
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingDelete(bool loading) {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.setIsLoadingDelete');
    try {
      return super.setIsLoadingDelete(loading);
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
addActivityData: ${addActivityData},
editActivityData: ${editActivityData},
editActivityUrlParams: ${editActivityUrlParams},
findActivityUrlParams: ${findActivityUrlParams},
removeActivityUrlParams: ${removeActivityUrlParams},
listActivitiesQueryParams: ${listActivitiesQueryParams},
imageName: ${imageName},
imageBytes: ${imageBytes},
activities: ${activities},
activity: ${activity},
category: ${category},
city: ${city},
isLoadingIndex: ${isLoadingIndex},
isLoadingAdd: ${isLoadingAdd},
isLoadingEdit: ${isLoadingEdit},
isLoadingGet: ${isLoadingGet},
isLoadingDelete: ${isLoadingDelete}
    ''';
  }
}
