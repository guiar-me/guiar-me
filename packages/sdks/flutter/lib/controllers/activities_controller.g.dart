// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activities_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ActivitiesController on ActivitiesControllerBase, Store {
  late final _$currentPageAtom =
      Atom(name: 'ActivitiesControllerBase.currentPage', context: context);

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
      Atom(name: 'ActivitiesControllerBase.lastPage', context: context);

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

  late final _$activityAtom =
      Atom(name: 'ActivitiesControllerBase.activity', context: context);

  @override
  ActivityModel get activity {
    _$activityAtom.reportRead();
    return super.activity;
  }

  bool _activityIsInitialized = false;

  @override
  set activity(ActivityModel value) {
    _$activityAtom
        .reportWrite(value, _activityIsInitialized ? super.activity : null, () {
      super.activity = value;
      _activityIsInitialized = true;
    });
  }

  late final _$listActivityAtom =
      Atom(name: 'ActivitiesControllerBase.listActivity', context: context);

  @override
  List<ActivityModel> get listActivity {
    _$listActivityAtom.reportRead();
    return super.listActivity;
  }

  @override
  set listActivity(List<ActivityModel> value) {
    _$listActivityAtom.reportWrite(value, super.listActivity, () {
      super.listActivity = value;
    });
  }

  late final _$removeActivityUrlParamAtom = Atom(
      name: 'ActivitiesControllerBase.removeActivityUrlParam',
      context: context);

  @override
  RemoveActivityUrlParam get removeActivityUrlParam {
    _$removeActivityUrlParamAtom.reportRead();
    return super.removeActivityUrlParam;
  }

  bool _removeActivityUrlParamIsInitialized = false;

  @override
  set removeActivityUrlParam(RemoveActivityUrlParam value) {
    _$removeActivityUrlParamAtom.reportWrite(
        value,
        _removeActivityUrlParamIsInitialized
            ? super.removeActivityUrlParam
            : null, () {
      super.removeActivityUrlParam = value;
      _removeActivityUrlParamIsInitialized = true;
    });
  }

  late final _$findActivityUrlParamAtom = Atom(
      name: 'ActivitiesControllerBase.findActivityUrlParam', context: context);

  @override
  FindActivityUrlParam get findActivityUrlParam {
    _$findActivityUrlParamAtom.reportRead();
    return super.findActivityUrlParam;
  }

  bool _findActivityUrlParamIsInitialized = false;

  @override
  set findActivityUrlParam(FindActivityUrlParam value) {
    _$findActivityUrlParamAtom.reportWrite(value,
        _findActivityUrlParamIsInitialized ? super.findActivityUrlParam : null,
        () {
      super.findActivityUrlParam = value;
      _findActivityUrlParamIsInitialized = true;
    });
  }

  late final _$listActivitiesQueryParamAtom = Atom(
      name: 'ActivitiesControllerBase.listActivitiesQueryParam',
      context: context);

  @override
  ListActivitiesQueryParam get listActivitiesQueryParam {
    _$listActivitiesQueryParamAtom.reportRead();
    return super.listActivitiesQueryParam;
  }

  bool _listActivitiesQueryParamIsInitialized = false;

  @override
  set listActivitiesQueryParam(ListActivitiesQueryParam value) {
    _$listActivitiesQueryParamAtom.reportWrite(
        value,
        _listActivitiesQueryParamIsInitialized
            ? super.listActivitiesQueryParam
            : null, () {
      super.listActivitiesQueryParam = value;
      _listActivitiesQueryParamIsInitialized = true;
    });
  }

  late final _$addActivityBodyParamAtom = Atom(
      name: 'ActivitiesControllerBase.addActivityBodyParam', context: context);

  @override
  AddActivityBodyParam get addActivityBodyParam {
    _$addActivityBodyParamAtom.reportRead();
    return super.addActivityBodyParam;
  }

  bool _addActivityBodyParamIsInitialized = false;

  @override
  set addActivityBodyParam(AddActivityBodyParam value) {
    _$addActivityBodyParamAtom.reportWrite(value,
        _addActivityBodyParamIsInitialized ? super.addActivityBodyParam : null,
        () {
      super.addActivityBodyParam = value;
      _addActivityBodyParamIsInitialized = true;
    });
  }

  late final _$editActivityBodyParamAtom = Atom(
      name: 'ActivitiesControllerBase.editActivityBodyParam', context: context);

  @override
  EditActivityBodyParam get editActivityBodyParam {
    _$editActivityBodyParamAtom.reportRead();
    return super.editActivityBodyParam;
  }

  bool _editActivityBodyParamIsInitialized = false;

  @override
  set editActivityBodyParam(EditActivityBodyParam value) {
    _$editActivityBodyParamAtom.reportWrite(
        value,
        _editActivityBodyParamIsInitialized
            ? super.editActivityBodyParam
            : null, () {
      super.editActivityBodyParam = value;
      _editActivityBodyParamIsInitialized = true;
    });
  }

  late final _$editActivityUrlParamAtom = Atom(
      name: 'ActivitiesControllerBase.editActivityUrlParam', context: context);

  @override
  EditActivityUrlParam get editActivityUrlParam {
    _$editActivityUrlParamAtom.reportRead();
    return super.editActivityUrlParam;
  }

  bool _editActivityUrlParamIsInitialized = false;

  @override
  set editActivityUrlParam(EditActivityUrlParam value) {
    _$editActivityUrlParamAtom.reportWrite(value,
        _editActivityUrlParamIsInitialized ? super.editActivityUrlParam : null,
        () {
      super.editActivityUrlParam = value;
      _editActivityUrlParamIsInitialized = true;
    });
  }

  late final _$imageNameAtom =
      Atom(name: 'ActivitiesControllerBase.imageName', context: context);

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
      Atom(name: 'ActivitiesControllerBase.imageBytes', context: context);

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

  late final _$isLoadingNextPageAtom = Atom(
      name: 'ActivitiesControllerBase.isLoadingNextPage', context: context);

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

  late final _$isLoadingRemoveActivityAtom = Atom(
      name: 'ActivitiesControllerBase.isLoadingRemoveActivity',
      context: context);

  @override
  bool get isLoadingRemoveActivity {
    _$isLoadingRemoveActivityAtom.reportRead();
    return super.isLoadingRemoveActivity;
  }

  @override
  set isLoadingRemoveActivity(bool value) {
    _$isLoadingRemoveActivityAtom
        .reportWrite(value, super.isLoadingRemoveActivity, () {
      super.isLoadingRemoveActivity = value;
    });
  }

  late final _$isLoadingFindActivityAtom = Atom(
      name: 'ActivitiesControllerBase.isLoadingFindActivity', context: context);

  @override
  bool get isLoadingFindActivity {
    _$isLoadingFindActivityAtom.reportRead();
    return super.isLoadingFindActivity;
  }

  @override
  set isLoadingFindActivity(bool value) {
    _$isLoadingFindActivityAtom.reportWrite(value, super.isLoadingFindActivity,
        () {
      super.isLoadingFindActivity = value;
    });
  }

  late final _$isLoadingListActivitiesAtom = Atom(
      name: 'ActivitiesControllerBase.isLoadingListActivities',
      context: context);

  @override
  bool get isLoadingListActivities {
    _$isLoadingListActivitiesAtom.reportRead();
    return super.isLoadingListActivities;
  }

  @override
  set isLoadingListActivities(bool value) {
    _$isLoadingListActivitiesAtom
        .reportWrite(value, super.isLoadingListActivities, () {
      super.isLoadingListActivities = value;
    });
  }

  late final _$isLoadingAddActivityAtom = Atom(
      name: 'ActivitiesControllerBase.isLoadingAddActivity', context: context);

  @override
  bool get isLoadingAddActivity {
    _$isLoadingAddActivityAtom.reportRead();
    return super.isLoadingAddActivity;
  }

  @override
  set isLoadingAddActivity(bool value) {
    _$isLoadingAddActivityAtom.reportWrite(value, super.isLoadingAddActivity,
        () {
      super.isLoadingAddActivity = value;
    });
  }

  late final _$isLoadingEditActivityAtom = Atom(
      name: 'ActivitiesControllerBase.isLoadingEditActivity', context: context);

  @override
  bool get isLoadingEditActivity {
    _$isLoadingEditActivityAtom.reportRead();
    return super.isLoadingEditActivity;
  }

  @override
  set isLoadingEditActivity(bool value) {
    _$isLoadingEditActivityAtom.reportWrite(value, super.isLoadingEditActivity,
        () {
      super.isLoadingEditActivity = value;
    });
  }

  late final _$removeActivityAsyncAction =
      AsyncAction('ActivitiesControllerBase.removeActivity', context: context);

  @override
  Future<bool> removeActivity() {
    return _$removeActivityAsyncAction.run(() => super.removeActivity());
  }

  late final _$findActivityAsyncAction =
      AsyncAction('ActivitiesControllerBase.findActivity', context: context);

  @override
  Future<bool> findActivity() {
    return _$findActivityAsyncAction.run(() => super.findActivity());
  }

  late final _$listActivitiesAsyncAction =
      AsyncAction('ActivitiesControllerBase.listActivities', context: context);

  @override
  Future<bool> listActivities() {
    return _$listActivitiesAsyncAction.run(() => super.listActivities());
  }

  late final _$addActivityAsyncAction =
      AsyncAction('ActivitiesControllerBase.addActivity', context: context);

  @override
  Future<bool> addActivity() {
    return _$addActivityAsyncAction.run(() => super.addActivity());
  }

  late final _$editActivityAsyncAction =
      AsyncAction('ActivitiesControllerBase.editActivity', context: context);

  @override
  Future<bool> editActivity() {
    return _$editActivityAsyncAction.run(() => super.editActivity());
  }

  late final _$ActivitiesControllerBaseActionController =
      ActionController(name: 'ActivitiesControllerBase', context: context);

  @override
  void setCurrentPage(int data) {
    final _$actionInfo = _$ActivitiesControllerBaseActionController.startAction(
        name: 'ActivitiesControllerBase.setCurrentPage');
    try {
      return super.setCurrentPage(data);
    } finally {
      _$ActivitiesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLastPage(int data) {
    final _$actionInfo = _$ActivitiesControllerBaseActionController.startAction(
        name: 'ActivitiesControllerBase.setLastPage');
    try {
      return super.setLastPage(data);
    } finally {
      _$ActivitiesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setActivity(ActivityModel data) {
    final _$actionInfo = _$ActivitiesControllerBaseActionController.startAction(
        name: 'ActivitiesControllerBase.setActivity');
    try {
      return super.setActivity(data);
    } finally {
      _$ActivitiesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setListActivity(List<ActivityModel> data) {
    final _$actionInfo = _$ActivitiesControllerBaseActionController.startAction(
        name: 'ActivitiesControllerBase.setListActivity');
    try {
      return super.setListActivity(data);
    } finally {
      _$ActivitiesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRemoveActivityUrlParam(RemoveActivityUrlParam data) {
    final _$actionInfo = _$ActivitiesControllerBaseActionController.startAction(
        name: 'ActivitiesControllerBase.setRemoveActivityUrlParam');
    try {
      return super.setRemoveActivityUrlParam(data);
    } finally {
      _$ActivitiesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFindActivityUrlParam(FindActivityUrlParam data) {
    final _$actionInfo = _$ActivitiesControllerBaseActionController.startAction(
        name: 'ActivitiesControllerBase.setFindActivityUrlParam');
    try {
      return super.setFindActivityUrlParam(data);
    } finally {
      _$ActivitiesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setListActivitiesQueryParam(ListActivitiesQueryParam data) {
    final _$actionInfo = _$ActivitiesControllerBaseActionController.startAction(
        name: 'ActivitiesControllerBase.setListActivitiesQueryParam');
    try {
      return super.setListActivitiesQueryParam(data);
    } finally {
      _$ActivitiesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAddActivityBodyParam(AddActivityBodyParam data) {
    final _$actionInfo = _$ActivitiesControllerBaseActionController.startAction(
        name: 'ActivitiesControllerBase.setAddActivityBodyParam');
    try {
      return super.setAddActivityBodyParam(data);
    } finally {
      _$ActivitiesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEditActivityBodyParam(EditActivityBodyParam data) {
    final _$actionInfo = _$ActivitiesControllerBaseActionController.startAction(
        name: 'ActivitiesControllerBase.setEditActivityBodyParam');
    try {
      return super.setEditActivityBodyParam(data);
    } finally {
      _$ActivitiesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEditActivityUrlParam(EditActivityUrlParam data) {
    final _$actionInfo = _$ActivitiesControllerBaseActionController.startAction(
        name: 'ActivitiesControllerBase.setEditActivityUrlParam');
    try {
      return super.setEditActivityUrlParam(data);
    } finally {
      _$ActivitiesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setImageName(String data) {
    final _$actionInfo = _$ActivitiesControllerBaseActionController.startAction(
        name: 'ActivitiesControllerBase.setImageName');
    try {
      return super.setImageName(data);
    } finally {
      _$ActivitiesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setImageBytes(Uint8List data) {
    final _$actionInfo = _$ActivitiesControllerBaseActionController.startAction(
        name: 'ActivitiesControllerBase.setImageBytes');
    try {
      return super.setImageBytes(data);
    } finally {
      _$ActivitiesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingNextPage(bool isLoading) {
    final _$actionInfo = _$ActivitiesControllerBaseActionController.startAction(
        name: 'ActivitiesControllerBase.setIsLoadingNextPage');
    try {
      return super.setIsLoadingNextPage(isLoading);
    } finally {
      _$ActivitiesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingRemoveActivity(bool isLoading) {
    final _$actionInfo = _$ActivitiesControllerBaseActionController.startAction(
        name: 'ActivitiesControllerBase.setIsLoadingRemoveActivity');
    try {
      return super.setIsLoadingRemoveActivity(isLoading);
    } finally {
      _$ActivitiesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingFindActivity(bool isLoading) {
    final _$actionInfo = _$ActivitiesControllerBaseActionController.startAction(
        name: 'ActivitiesControllerBase.setIsLoadingFindActivity');
    try {
      return super.setIsLoadingFindActivity(isLoading);
    } finally {
      _$ActivitiesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingListActivities(bool isLoading) {
    final _$actionInfo = _$ActivitiesControllerBaseActionController.startAction(
        name: 'ActivitiesControllerBase.setIsLoadingListActivities');
    try {
      return super.setIsLoadingListActivities(isLoading);
    } finally {
      _$ActivitiesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingAddActivity(bool isLoading) {
    final _$actionInfo = _$ActivitiesControllerBaseActionController.startAction(
        name: 'ActivitiesControllerBase.setIsLoadingAddActivity');
    try {
      return super.setIsLoadingAddActivity(isLoading);
    } finally {
      _$ActivitiesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingEditActivity(bool isLoading) {
    final _$actionInfo = _$ActivitiesControllerBaseActionController.startAction(
        name: 'ActivitiesControllerBase.setIsLoadingEditActivity');
    try {
      return super.setIsLoadingEditActivity(isLoading);
    } finally {
      _$ActivitiesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
lastPage: ${lastPage},
activity: ${activity},
listActivity: ${listActivity},
removeActivityUrlParam: ${removeActivityUrlParam},
findActivityUrlParam: ${findActivityUrlParam},
listActivitiesQueryParam: ${listActivitiesQueryParam},
addActivityBodyParam: ${addActivityBodyParam},
editActivityBodyParam: ${editActivityBodyParam},
editActivityUrlParam: ${editActivityUrlParam},
imageName: ${imageName},
imageBytes: ${imageBytes},
isLoadingNextPage: ${isLoadingNextPage},
isLoadingRemoveActivity: ${isLoadingRemoveActivity},
isLoadingFindActivity: ${isLoadingFindActivity},
isLoadingListActivities: ${isLoadingListActivities},
isLoadingAddActivity: ${isLoadingAddActivity},
isLoadingEditActivity: ${isLoadingEditActivity}
    ''';
  }
}
