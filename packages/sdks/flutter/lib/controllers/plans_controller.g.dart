// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plans_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PlansController on PlansControllerBase, Store {
  late final _$currentPageAtom =
      Atom(name: 'PlansControllerBase.currentPage', context: context);

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
      Atom(name: 'PlansControllerBase.lastPage', context: context);

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

  late final _$planAtom =
      Atom(name: 'PlansControllerBase.plan', context: context);

  @override
  PlanModel get plan {
    _$planAtom.reportRead();
    return super.plan;
  }

  bool _planIsInitialized = false;

  @override
  set plan(PlanModel value) {
    _$planAtom.reportWrite(value, _planIsInitialized ? super.plan : null, () {
      super.plan = value;
      _planIsInitialized = true;
    });
  }

  late final _$listPlanAtom =
      Atom(name: 'PlansControllerBase.listPlan', context: context);

  @override
  List<PlanModel> get listPlan {
    _$listPlanAtom.reportRead();
    return super.listPlan;
  }

  @override
  set listPlan(List<PlanModel> value) {
    _$listPlanAtom.reportWrite(value, super.listPlan, () {
      super.listPlan = value;
    });
  }

  late final _$findPlanUrlParamAtom =
      Atom(name: 'PlansControllerBase.findPlanUrlParam', context: context);

  @override
  FindPlanUrlParam get findPlanUrlParam {
    _$findPlanUrlParamAtom.reportRead();
    return super.findPlanUrlParam;
  }

  bool _findPlanUrlParamIsInitialized = false;

  @override
  set findPlanUrlParam(FindPlanUrlParam value) {
    _$findPlanUrlParamAtom.reportWrite(
        value, _findPlanUrlParamIsInitialized ? super.findPlanUrlParam : null,
        () {
      super.findPlanUrlParam = value;
      _findPlanUrlParamIsInitialized = true;
    });
  }

  late final _$addPlanBodyParamAtom =
      Atom(name: 'PlansControllerBase.addPlanBodyParam', context: context);

  @override
  AddPlanBodyParam get addPlanBodyParam {
    _$addPlanBodyParamAtom.reportRead();
    return super.addPlanBodyParam;
  }

  bool _addPlanBodyParamIsInitialized = false;

  @override
  set addPlanBodyParam(AddPlanBodyParam value) {
    _$addPlanBodyParamAtom.reportWrite(
        value, _addPlanBodyParamIsInitialized ? super.addPlanBodyParam : null,
        () {
      super.addPlanBodyParam = value;
      _addPlanBodyParamIsInitialized = true;
    });
  }

  late final _$editPlanBodyParamAtom =
      Atom(name: 'PlansControllerBase.editPlanBodyParam', context: context);

  @override
  EditPlanBodyParam get editPlanBodyParam {
    _$editPlanBodyParamAtom.reportRead();
    return super.editPlanBodyParam;
  }

  bool _editPlanBodyParamIsInitialized = false;

  @override
  set editPlanBodyParam(EditPlanBodyParam value) {
    _$editPlanBodyParamAtom.reportWrite(
        value, _editPlanBodyParamIsInitialized ? super.editPlanBodyParam : null,
        () {
      super.editPlanBodyParam = value;
      _editPlanBodyParamIsInitialized = true;
    });
  }

  late final _$editPlanUrlParamAtom =
      Atom(name: 'PlansControllerBase.editPlanUrlParam', context: context);

  @override
  EditPlanUrlParam get editPlanUrlParam {
    _$editPlanUrlParamAtom.reportRead();
    return super.editPlanUrlParam;
  }

  bool _editPlanUrlParamIsInitialized = false;

  @override
  set editPlanUrlParam(EditPlanUrlParam value) {
    _$editPlanUrlParamAtom.reportWrite(
        value, _editPlanUrlParamIsInitialized ? super.editPlanUrlParam : null,
        () {
      super.editPlanUrlParam = value;
      _editPlanUrlParamIsInitialized = true;
    });
  }

  late final _$isLoadingNextPageAtom =
      Atom(name: 'PlansControllerBase.isLoadingNextPage', context: context);

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

  late final _$isLoadingFindPlanAtom =
      Atom(name: 'PlansControllerBase.isLoadingFindPlan', context: context);

  @override
  bool get isLoadingFindPlan {
    _$isLoadingFindPlanAtom.reportRead();
    return super.isLoadingFindPlan;
  }

  @override
  set isLoadingFindPlan(bool value) {
    _$isLoadingFindPlanAtom.reportWrite(value, super.isLoadingFindPlan, () {
      super.isLoadingFindPlan = value;
    });
  }

  late final _$isLoadingListPlansAtom =
      Atom(name: 'PlansControllerBase.isLoadingListPlans', context: context);

  @override
  bool get isLoadingListPlans {
    _$isLoadingListPlansAtom.reportRead();
    return super.isLoadingListPlans;
  }

  @override
  set isLoadingListPlans(bool value) {
    _$isLoadingListPlansAtom.reportWrite(value, super.isLoadingListPlans, () {
      super.isLoadingListPlans = value;
    });
  }

  late final _$isLoadingAddPlanAtom =
      Atom(name: 'PlansControllerBase.isLoadingAddPlan', context: context);

  @override
  bool get isLoadingAddPlan {
    _$isLoadingAddPlanAtom.reportRead();
    return super.isLoadingAddPlan;
  }

  @override
  set isLoadingAddPlan(bool value) {
    _$isLoadingAddPlanAtom.reportWrite(value, super.isLoadingAddPlan, () {
      super.isLoadingAddPlan = value;
    });
  }

  late final _$isLoadingEditPlanAtom =
      Atom(name: 'PlansControllerBase.isLoadingEditPlan', context: context);

  @override
  bool get isLoadingEditPlan {
    _$isLoadingEditPlanAtom.reportRead();
    return super.isLoadingEditPlan;
  }

  @override
  set isLoadingEditPlan(bool value) {
    _$isLoadingEditPlanAtom.reportWrite(value, super.isLoadingEditPlan, () {
      super.isLoadingEditPlan = value;
    });
  }

  late final _$findPlanAsyncAction =
      AsyncAction('PlansControllerBase.findPlan', context: context);

  @override
  Future<void> findPlan() {
    return _$findPlanAsyncAction.run(() => super.findPlan());
  }

  late final _$listPlansAsyncAction =
      AsyncAction('PlansControllerBase.listPlans', context: context);

  @override
  Future<void> listPlans() {
    return _$listPlansAsyncAction.run(() => super.listPlans());
  }

  late final _$addPlanAsyncAction =
      AsyncAction('PlansControllerBase.addPlan', context: context);

  @override
  Future<void> addPlan() {
    return _$addPlanAsyncAction.run(() => super.addPlan());
  }

  late final _$editPlanAsyncAction =
      AsyncAction('PlansControllerBase.editPlan', context: context);

  @override
  Future<void> editPlan() {
    return _$editPlanAsyncAction.run(() => super.editPlan());
  }

  late final _$PlansControllerBaseActionController =
      ActionController(name: 'PlansControllerBase', context: context);

  @override
  void setCurrentPage(int data) {
    final _$actionInfo = _$PlansControllerBaseActionController.startAction(
        name: 'PlansControllerBase.setCurrentPage');
    try {
      return super.setCurrentPage(data);
    } finally {
      _$PlansControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLastPage(int data) {
    final _$actionInfo = _$PlansControllerBaseActionController.startAction(
        name: 'PlansControllerBase.setLastPage');
    try {
      return super.setLastPage(data);
    } finally {
      _$PlansControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPlan(PlanModel data) {
    final _$actionInfo = _$PlansControllerBaseActionController.startAction(
        name: 'PlansControllerBase.setPlan');
    try {
      return super.setPlan(data);
    } finally {
      _$PlansControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setListPlan(List<PlanModel> data) {
    final _$actionInfo = _$PlansControllerBaseActionController.startAction(
        name: 'PlansControllerBase.setListPlan');
    try {
      return super.setListPlan(data);
    } finally {
      _$PlansControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFindPlanUrlParam(FindPlanUrlParam data) {
    final _$actionInfo = _$PlansControllerBaseActionController.startAction(
        name: 'PlansControllerBase.setFindPlanUrlParam');
    try {
      return super.setFindPlanUrlParam(data);
    } finally {
      _$PlansControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAddPlanBodyParam(AddPlanBodyParam data) {
    final _$actionInfo = _$PlansControllerBaseActionController.startAction(
        name: 'PlansControllerBase.setAddPlanBodyParam');
    try {
      return super.setAddPlanBodyParam(data);
    } finally {
      _$PlansControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEditPlanBodyParam(EditPlanBodyParam data) {
    final _$actionInfo = _$PlansControllerBaseActionController.startAction(
        name: 'PlansControllerBase.setEditPlanBodyParam');
    try {
      return super.setEditPlanBodyParam(data);
    } finally {
      _$PlansControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEditPlanUrlParam(EditPlanUrlParam data) {
    final _$actionInfo = _$PlansControllerBaseActionController.startAction(
        name: 'PlansControllerBase.setEditPlanUrlParam');
    try {
      return super.setEditPlanUrlParam(data);
    } finally {
      _$PlansControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingNextPage(bool isLoading) {
    final _$actionInfo = _$PlansControllerBaseActionController.startAction(
        name: 'PlansControllerBase.setIsLoadingNextPage');
    try {
      return super.setIsLoadingNextPage(isLoading);
    } finally {
      _$PlansControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingFindPlan(bool isLoading) {
    final _$actionInfo = _$PlansControllerBaseActionController.startAction(
        name: 'PlansControllerBase.setIsLoadingFindPlan');
    try {
      return super.setIsLoadingFindPlan(isLoading);
    } finally {
      _$PlansControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingListPlans(bool isLoading) {
    final _$actionInfo = _$PlansControllerBaseActionController.startAction(
        name: 'PlansControllerBase.setIsLoadingListPlans');
    try {
      return super.setIsLoadingListPlans(isLoading);
    } finally {
      _$PlansControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingAddPlan(bool isLoading) {
    final _$actionInfo = _$PlansControllerBaseActionController.startAction(
        name: 'PlansControllerBase.setIsLoadingAddPlan');
    try {
      return super.setIsLoadingAddPlan(isLoading);
    } finally {
      _$PlansControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingEditPlan(bool isLoading) {
    final _$actionInfo = _$PlansControllerBaseActionController.startAction(
        name: 'PlansControllerBase.setIsLoadingEditPlan');
    try {
      return super.setIsLoadingEditPlan(isLoading);
    } finally {
      _$PlansControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
lastPage: ${lastPage},
plan: ${plan},
listPlan: ${listPlan},
findPlanUrlParam: ${findPlanUrlParam},
addPlanBodyParam: ${addPlanBodyParam},
editPlanBodyParam: ${editPlanBodyParam},
editPlanUrlParam: ${editPlanUrlParam},
isLoadingNextPage: ${isLoadingNextPage},
isLoadingFindPlan: ${isLoadingFindPlan},
isLoadingListPlans: ${isLoadingListPlans},
isLoadingAddPlan: ${isLoadingAddPlan},
isLoadingEditPlan: ${isLoadingEditPlan}
    ''';
  }
}
