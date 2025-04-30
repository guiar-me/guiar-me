// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PlanController on PlanControllerBase, Store {
  late final _$addPlanDataAtom =
      Atom(name: 'PlanControllerBase.addPlanData', context: context);

  @override
  AddPlanParams get addPlanData {
    _$addPlanDataAtom.reportRead();
    return super.addPlanData;
  }

  @override
  set addPlanData(AddPlanParams value) {
    _$addPlanDataAtom.reportWrite(value, super.addPlanData, () {
      super.addPlanData = value;
    });
  }

  late final _$editPlanDataAtom =
      Atom(name: 'PlanControllerBase.editPlanData', context: context);

  @override
  EditPlanParams get editPlanData {
    _$editPlanDataAtom.reportRead();
    return super.editPlanData;
  }

  @override
  set editPlanData(EditPlanParams value) {
    _$editPlanDataAtom.reportWrite(value, super.editPlanData, () {
      super.editPlanData = value;
    });
  }

  late final _$plansAtom =
      Atom(name: 'PlanControllerBase.plans', context: context);

  @override
  List<PlanModel> get plans {
    _$plansAtom.reportRead();
    return super.plans;
  }

  @override
  set plans(List<PlanModel> value) {
    _$plansAtom.reportWrite(value, super.plans, () {
      super.plans = value;
    });
  }

  late final _$planAtom =
      Atom(name: 'PlanControllerBase.plan', context: context);

  @override
  PlanModel? get plan {
    _$planAtom.reportRead();
    return super.plan;
  }

  @override
  set plan(PlanModel? value) {
    _$planAtom.reportWrite(value, super.plan, () {
      super.plan = value;
    });
  }

  late final _$isLoadingIndexAtom =
      Atom(name: 'PlanControllerBase.isLoadingIndex', context: context);

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
      Atom(name: 'PlanControllerBase.isLoadingAdd', context: context);

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
      Atom(name: 'PlanControllerBase.isLoadingEdit', context: context);

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
      Atom(name: 'PlanControllerBase.isLoadingGet', context: context);

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

  late final _$indexAsyncAction =
      AsyncAction('PlanControllerBase.index', context: context);

  @override
  Future<void> index() {
    return _$indexAsyncAction.run(() => super.index());
  }

  late final _$getAsyncAction =
      AsyncAction('PlanControllerBase.get', context: context);

  @override
  Future<void> get(String id) {
    return _$getAsyncAction.run(() => super.get(id));
  }

  late final _$addAsyncAction =
      AsyncAction('PlanControllerBase.add', context: context);

  @override
  Future<void> add() {
    return _$addAsyncAction.run(() => super.add());
  }

  late final _$editAsyncAction =
      AsyncAction('PlanControllerBase.edit', context: context);

  @override
  Future<void> edit() {
    return _$editAsyncAction.run(() => super.edit());
  }

  late final _$PlanControllerBaseActionController =
      ActionController(name: 'PlanControllerBase', context: context);

  @override
  void setAddPlanData(
      {String? name,
      String? shortDescription,
      String? longDescription,
      String? frequency,
      double? value,
      int? couponLimit}) {
    final _$actionInfo = _$PlanControllerBaseActionController.startAction(
        name: 'PlanControllerBase.setAddPlanData');
    try {
      return super.setAddPlanData(
          name: name,
          shortDescription: shortDescription,
          longDescription: longDescription,
          frequency: frequency,
          value: value,
          couponLimit: couponLimit);
    } finally {
      _$PlanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unsetAddPlanData() {
    final _$actionInfo = _$PlanControllerBaseActionController.startAction(
        name: 'PlanControllerBase.unsetAddPlanData');
    try {
      return super.unsetAddPlanData();
    } finally {
      _$PlanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEditPlanData(
      {int? id,
      String? name,
      String? shortDescription,
      String? longDescription,
      String? frequency,
      double? value,
      int? couponLimit}) {
    final _$actionInfo = _$PlanControllerBaseActionController.startAction(
        name: 'PlanControllerBase.setEditPlanData');
    try {
      return super.setEditPlanData(
          id: id,
          name: name,
          shortDescription: shortDescription,
          longDescription: longDescription,
          frequency: frequency,
          value: value,
          couponLimit: couponLimit);
    } finally {
      _$PlanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unsetEditPlanData() {
    final _$actionInfo = _$PlanControllerBaseActionController.startAction(
        name: 'PlanControllerBase.unsetEditPlanData');
    try {
      return super.unsetEditPlanData();
    } finally {
      _$PlanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPlans(List<PlanModel> data) {
    final _$actionInfo = _$PlanControllerBaseActionController.startAction(
        name: 'PlanControllerBase.setPlans');
    try {
      return super.setPlans(data);
    } finally {
      _$PlanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPlan(PlanModel data) {
    final _$actionInfo = _$PlanControllerBaseActionController.startAction(
        name: 'PlanControllerBase.setPlan');
    try {
      return super.setPlan(data);
    } finally {
      _$PlanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingIndex(bool loading) {
    final _$actionInfo = _$PlanControllerBaseActionController.startAction(
        name: 'PlanControllerBase.setIsLoadingIndex');
    try {
      return super.setIsLoadingIndex(loading);
    } finally {
      _$PlanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingGet(bool loading) {
    final _$actionInfo = _$PlanControllerBaseActionController.startAction(
        name: 'PlanControllerBase.setIsLoadingGet');
    try {
      return super.setIsLoadingGet(loading);
    } finally {
      _$PlanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unsetPlan() {
    final _$actionInfo = _$PlanControllerBaseActionController.startAction(
        name: 'PlanControllerBase.unsetPlan');
    try {
      return super.unsetPlan();
    } finally {
      _$PlanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingAdd(bool loading) {
    final _$actionInfo = _$PlanControllerBaseActionController.startAction(
        name: 'PlanControllerBase.setIsLoadingAdd');
    try {
      return super.setIsLoadingAdd(loading);
    } finally {
      _$PlanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingEdit(bool loading) {
    final _$actionInfo = _$PlanControllerBaseActionController.startAction(
        name: 'PlanControllerBase.setIsLoadingEdit');
    try {
      return super.setIsLoadingEdit(loading);
    } finally {
      _$PlanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
addPlanData: ${addPlanData},
editPlanData: ${editPlanData},
plans: ${plans},
plan: ${plan},
isLoadingIndex: ${isLoadingIndex},
isLoadingAdd: ${isLoadingAdd},
isLoadingEdit: ${isLoadingEdit},
isLoadingGet: ${isLoadingGet}
    ''';
  }
}
