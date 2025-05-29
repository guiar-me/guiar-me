// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SubscriptionController on SubscriptionControllerBase, Store {
  late final _$addSubscriptionBodyParamAtom = Atom(
      name: 'SubscriptionControllerBase.addSubscriptionBodyParam',
      context: context);

  @override
  AddSubscriptionBodyParam get addSubscriptionBodyParam {
    _$addSubscriptionBodyParamAtom.reportRead();
    return super.addSubscriptionBodyParam;
  }

  @override
  set addSubscriptionBodyParam(AddSubscriptionBodyParam value) {
    _$addSubscriptionBodyParamAtom
        .reportWrite(value, super.addSubscriptionBodyParam, () {
      super.addSubscriptionBodyParam = value;
    });
  }

  late final _$subscriptionAtom =
      Atom(name: 'SubscriptionControllerBase.subscription', context: context);

  @override
  SubscriptionModel? get subscription {
    _$subscriptionAtom.reportRead();
    return super.subscription;
  }

  @override
  set subscription(SubscriptionModel? value) {
    _$subscriptionAtom.reportWrite(value, super.subscription, () {
      super.subscription = value;
    });
  }

  late final _$isLoadingGetAtom =
      Atom(name: 'SubscriptionControllerBase.isLoadingGet', context: context);

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

  late final _$isLoadingCreateAtom = Atom(
      name: 'SubscriptionControllerBase.isLoadingCreate', context: context);

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

  late final _$getAsyncAction =
      AsyncAction('SubscriptionControllerBase.get', context: context);

  @override
  Future<void> get(int id) {
    return _$getAsyncAction.run(() => super.get(id));
  }

  late final _$createAsyncAction =
      AsyncAction('SubscriptionControllerBase.create', context: context);

  @override
  Future<void> create() {
    return _$createAsyncAction.run(() => super.create());
  }

  late final _$SubscriptionControllerBaseActionController =
      ActionController(name: 'SubscriptionControllerBase', context: context);

  @override
  void setCreateSubscriptionParams({int? planId, int? creditCardId}) {
    final _$actionInfo =
        _$SubscriptionControllerBaseActionController.startAction(
            name: 'SubscriptionControllerBase.setCreateSubscriptionParams');
    try {
      return super.setCreateSubscriptionParams(
          planId: planId, creditCardId: creditCardId);
    } finally {
      _$SubscriptionControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unsetCreateSubscriptionParams() {
    final _$actionInfo =
        _$SubscriptionControllerBaseActionController.startAction(
            name: 'SubscriptionControllerBase.unsetCreateSubscriptionParams');
    try {
      return super.unsetCreateSubscriptionParams();
    } finally {
      _$SubscriptionControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSubscription(SubscriptionModel? data) {
    final _$actionInfo = _$SubscriptionControllerBaseActionController
        .startAction(name: 'SubscriptionControllerBase.setSubscription');
    try {
      return super.setSubscription(data);
    } finally {
      _$SubscriptionControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingGet(bool loading) {
    final _$actionInfo = _$SubscriptionControllerBaseActionController
        .startAction(name: 'SubscriptionControllerBase.setIsLoadingGet');
    try {
      return super.setIsLoadingGet(loading);
    } finally {
      _$SubscriptionControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingCreate(bool loading) {
    final _$actionInfo = _$SubscriptionControllerBaseActionController
        .startAction(name: 'SubscriptionControllerBase.setIsLoadingCreate');
    try {
      return super.setIsLoadingCreate(loading);
    } finally {
      _$SubscriptionControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
addSubscriptionBodyParam: ${addSubscriptionBodyParam},
subscription: ${subscription},
isLoadingGet: ${isLoadingGet},
isLoadingCreate: ${isLoadingCreate}
    ''';
  }
}
