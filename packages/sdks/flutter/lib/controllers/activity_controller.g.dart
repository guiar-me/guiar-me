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
  AddActivityParams get addActivityData {
    _$addActivityDataAtom.reportRead();
    return super.addActivityData;
  }

  @override
  set addActivityData(AddActivityParams value) {
    _$addActivityDataAtom.reportWrite(value, super.addActivityData, () {
      super.addActivityData = value;
    });
  }

  late final _$editActivityDataAtom =
      Atom(name: 'ActivityControllerBase.editActivityData', context: context);

  @override
  EditActivityParams get editActivityData {
    _$editActivityDataAtom.reportRead();
    return super.editActivityData;
  }

  @override
  set editActivityData(EditActivityParams value) {
    _$editActivityDataAtom.reportWrite(value, super.editActivityData, () {
      super.editActivityData = value;
    });
  }

  late final _$fileNameAtom =
      Atom(name: 'ActivityControllerBase.fileName', context: context);

  @override
  String? get fileName {
    _$fileNameAtom.reportRead();
    return super.fileName;
  }

  @override
  set fileName(String? value) {
    _$fileNameAtom.reportWrite(value, super.fileName, () {
      super.fileName = value;
    });
  }

  late final _$fileBytesAtom =
      Atom(name: 'ActivityControllerBase.fileBytes', context: context);

  @override
  Uint8List? get fileBytes {
    _$fileBytesAtom.reportRead();
    return super.fileBytes;
  }

  @override
  set fileBytes(Uint8List? value) {
    _$fileBytesAtom.reportWrite(value, super.fileBytes, () {
      super.fileBytes = value;
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
  Future<void> get(String id) {
    return _$getAsyncAction.run(() => super.get(id));
  }

  late final _$deleteAsyncAction =
      AsyncAction('ActivityControllerBase.delete', context: context);

  @override
  Future<void> delete(String id) {
    return _$deleteAsyncAction.run(() => super.delete(id));
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
      String? state,
      String? city,
      String? neighborhood,
      String? address,
      String? number,
      String? complement}) {
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
  void setFileName(String data) {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.setFileName');
    try {
      return super.setFileName(data);
    } finally {
      _$ActivityControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFileBytes(Uint8List data) {
    final _$actionInfo = _$ActivityControllerBaseActionController.startAction(
        name: 'ActivityControllerBase.setFileBytes');
    try {
      return super.setFileBytes(data);
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
fileName: ${fileName},
fileBytes: ${fileBytes},
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
