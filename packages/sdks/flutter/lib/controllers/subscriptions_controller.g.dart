// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscriptions_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SubscriptionsController on SubscriptionsControllerBase, Store {
  late final _$currentPageAtom =
      Atom(name: 'SubscriptionsControllerBase.currentPage', context: context);

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
      Atom(name: 'SubscriptionsControllerBase.lastPage', context: context);

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

  late final _$subscriptionAtom =
      Atom(name: 'SubscriptionsControllerBase.subscription', context: context);

  @override
  SubscriptionModel get subscription {
    _$subscriptionAtom.reportRead();
    return super.subscription;
  }

  bool _subscriptionIsInitialized = false;

  @override
  set subscription(SubscriptionModel value) {
    _$subscriptionAtom.reportWrite(
        value, _subscriptionIsInitialized ? super.subscription : null, () {
      super.subscription = value;
      _subscriptionIsInitialized = true;
    });
  }

  late final _$listSubscriptionAtom = Atom(
      name: 'SubscriptionsControllerBase.listSubscription', context: context);

  @override
  List<SubscriptionModel> get listSubscription {
    _$listSubscriptionAtom.reportRead();
    return super.listSubscription;
  }

  @override
  set listSubscription(List<SubscriptionModel> value) {
    _$listSubscriptionAtom.reportWrite(value, super.listSubscription, () {
      super.listSubscription = value;
    });
  }

  late final _$removeSubscriptionUrlParamAtom = Atom(
      name: 'SubscriptionsControllerBase.removeSubscriptionUrlParam',
      context: context);

  @override
  RemoveSubscriptionUrlParam get removeSubscriptionUrlParam {
    _$removeSubscriptionUrlParamAtom.reportRead();
    return super.removeSubscriptionUrlParam;
  }

  bool _removeSubscriptionUrlParamIsInitialized = false;

  @override
  set removeSubscriptionUrlParam(RemoveSubscriptionUrlParam value) {
    _$removeSubscriptionUrlParamAtom.reportWrite(
        value,
        _removeSubscriptionUrlParamIsInitialized
            ? super.removeSubscriptionUrlParam
            : null, () {
      super.removeSubscriptionUrlParam = value;
      _removeSubscriptionUrlParamIsInitialized = true;
    });
  }

  late final _$findSubscriptionUrlParamAtom = Atom(
      name: 'SubscriptionsControllerBase.findSubscriptionUrlParam',
      context: context);

  @override
  FindSubscriptionUrlParam get findSubscriptionUrlParam {
    _$findSubscriptionUrlParamAtom.reportRead();
    return super.findSubscriptionUrlParam;
  }

  bool _findSubscriptionUrlParamIsInitialized = false;

  @override
  set findSubscriptionUrlParam(FindSubscriptionUrlParam value) {
    _$findSubscriptionUrlParamAtom.reportWrite(
        value,
        _findSubscriptionUrlParamIsInitialized
            ? super.findSubscriptionUrlParam
            : null, () {
      super.findSubscriptionUrlParam = value;
      _findSubscriptionUrlParamIsInitialized = true;
    });
  }

  late final _$addSubscriptionBodyParamAtom = Atom(
      name: 'SubscriptionsControllerBase.addSubscriptionBodyParam',
      context: context);

  @override
  AddSubscriptionBodyParam get addSubscriptionBodyParam {
    _$addSubscriptionBodyParamAtom.reportRead();
    return super.addSubscriptionBodyParam;
  }

  bool _addSubscriptionBodyParamIsInitialized = false;

  @override
  set addSubscriptionBodyParam(AddSubscriptionBodyParam value) {
    _$addSubscriptionBodyParamAtom.reportWrite(
        value,
        _addSubscriptionBodyParamIsInitialized
            ? super.addSubscriptionBodyParam
            : null, () {
      super.addSubscriptionBodyParam = value;
      _addSubscriptionBodyParamIsInitialized = true;
    });
  }

  late final _$isLoadingNextPageAtom = Atom(
      name: 'SubscriptionsControllerBase.isLoadingNextPage', context: context);

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

  late final _$isLoadingRemoveSubscriptionAtom = Atom(
      name: 'SubscriptionsControllerBase.isLoadingRemoveSubscription',
      context: context);

  @override
  bool get isLoadingRemoveSubscription {
    _$isLoadingRemoveSubscriptionAtom.reportRead();
    return super.isLoadingRemoveSubscription;
  }

  @override
  set isLoadingRemoveSubscription(bool value) {
    _$isLoadingRemoveSubscriptionAtom
        .reportWrite(value, super.isLoadingRemoveSubscription, () {
      super.isLoadingRemoveSubscription = value;
    });
  }

  late final _$isLoadingFindSubscriptionAtom = Atom(
      name: 'SubscriptionsControllerBase.isLoadingFindSubscription',
      context: context);

  @override
  bool get isLoadingFindSubscription {
    _$isLoadingFindSubscriptionAtom.reportRead();
    return super.isLoadingFindSubscription;
  }

  @override
  set isLoadingFindSubscription(bool value) {
    _$isLoadingFindSubscriptionAtom
        .reportWrite(value, super.isLoadingFindSubscription, () {
      super.isLoadingFindSubscription = value;
    });
  }

  late final _$isLoadingListSubscriptionsAtom = Atom(
      name: 'SubscriptionsControllerBase.isLoadingListSubscriptions',
      context: context);

  @override
  bool get isLoadingListSubscriptions {
    _$isLoadingListSubscriptionsAtom.reportRead();
    return super.isLoadingListSubscriptions;
  }

  @override
  set isLoadingListSubscriptions(bool value) {
    _$isLoadingListSubscriptionsAtom
        .reportWrite(value, super.isLoadingListSubscriptions, () {
      super.isLoadingListSubscriptions = value;
    });
  }

  late final _$isLoadingAddSubscriptionAtom = Atom(
      name: 'SubscriptionsControllerBase.isLoadingAddSubscription',
      context: context);

  @override
  bool get isLoadingAddSubscription {
    _$isLoadingAddSubscriptionAtom.reportRead();
    return super.isLoadingAddSubscription;
  }

  @override
  set isLoadingAddSubscription(bool value) {
    _$isLoadingAddSubscriptionAtom
        .reportWrite(value, super.isLoadingAddSubscription, () {
      super.isLoadingAddSubscription = value;
    });
  }

  late final _$removeSubscriptionAsyncAction = AsyncAction(
      'SubscriptionsControllerBase.removeSubscription',
      context: context);

  @override
  Future<void> removeSubscription() {
    return _$removeSubscriptionAsyncAction
        .run(() => super.removeSubscription());
  }

  late final _$findSubscriptionAsyncAction = AsyncAction(
      'SubscriptionsControllerBase.findSubscription',
      context: context);

  @override
  Future<void> findSubscription() {
    return _$findSubscriptionAsyncAction.run(() => super.findSubscription());
  }

  late final _$listSubscriptionsAsyncAction = AsyncAction(
      'SubscriptionsControllerBase.listSubscriptions',
      context: context);

  @override
  Future<void> listSubscriptions() {
    return _$listSubscriptionsAsyncAction.run(() => super.listSubscriptions());
  }

  late final _$addSubscriptionAsyncAction = AsyncAction(
      'SubscriptionsControllerBase.addSubscription',
      context: context);

  @override
  Future<void> addSubscription() {
    return _$addSubscriptionAsyncAction.run(() => super.addSubscription());
  }

  late final _$SubscriptionsControllerBaseActionController =
      ActionController(name: 'SubscriptionsControllerBase', context: context);

  @override
  void setCurrentPage(int data) {
    final _$actionInfo = _$SubscriptionsControllerBaseActionController
        .startAction(name: 'SubscriptionsControllerBase.setCurrentPage');
    try {
      return super.setCurrentPage(data);
    } finally {
      _$SubscriptionsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLastPage(int data) {
    final _$actionInfo = _$SubscriptionsControllerBaseActionController
        .startAction(name: 'SubscriptionsControllerBase.setLastPage');
    try {
      return super.setLastPage(data);
    } finally {
      _$SubscriptionsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSubscription(SubscriptionModel data) {
    final _$actionInfo = _$SubscriptionsControllerBaseActionController
        .startAction(name: 'SubscriptionsControllerBase.setSubscription');
    try {
      return super.setSubscription(data);
    } finally {
      _$SubscriptionsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setListSubscription(List<SubscriptionModel> data) {
    final _$actionInfo = _$SubscriptionsControllerBaseActionController
        .startAction(name: 'SubscriptionsControllerBase.setListSubscription');
    try {
      return super.setListSubscription(data);
    } finally {
      _$SubscriptionsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRemoveSubscriptionUrlParam(RemoveSubscriptionUrlParam data) {
    final _$actionInfo =
        _$SubscriptionsControllerBaseActionController.startAction(
            name: 'SubscriptionsControllerBase.setRemoveSubscriptionUrlParam');
    try {
      return super.setRemoveSubscriptionUrlParam(data);
    } finally {
      _$SubscriptionsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFindSubscriptionUrlParam(FindSubscriptionUrlParam data) {
    final _$actionInfo =
        _$SubscriptionsControllerBaseActionController.startAction(
            name: 'SubscriptionsControllerBase.setFindSubscriptionUrlParam');
    try {
      return super.setFindSubscriptionUrlParam(data);
    } finally {
      _$SubscriptionsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAddSubscriptionBodyParam(AddSubscriptionBodyParam data) {
    final _$actionInfo =
        _$SubscriptionsControllerBaseActionController.startAction(
            name: 'SubscriptionsControllerBase.setAddSubscriptionBodyParam');
    try {
      return super.setAddSubscriptionBodyParam(data);
    } finally {
      _$SubscriptionsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingNextPage(bool isLoading) {
    final _$actionInfo = _$SubscriptionsControllerBaseActionController
        .startAction(name: 'SubscriptionsControllerBase.setIsLoadingNextPage');
    try {
      return super.setIsLoadingNextPage(isLoading);
    } finally {
      _$SubscriptionsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingRemoveSubscription(bool isLoading) {
    final _$actionInfo =
        _$SubscriptionsControllerBaseActionController.startAction(
            name: 'SubscriptionsControllerBase.setIsLoadingRemoveSubscription');
    try {
      return super.setIsLoadingRemoveSubscription(isLoading);
    } finally {
      _$SubscriptionsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingFindSubscription(bool isLoading) {
    final _$actionInfo =
        _$SubscriptionsControllerBaseActionController.startAction(
            name: 'SubscriptionsControllerBase.setIsLoadingFindSubscription');
    try {
      return super.setIsLoadingFindSubscription(isLoading);
    } finally {
      _$SubscriptionsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingListSubscriptions(bool isLoading) {
    final _$actionInfo =
        _$SubscriptionsControllerBaseActionController.startAction(
            name: 'SubscriptionsControllerBase.setIsLoadingListSubscriptions');
    try {
      return super.setIsLoadingListSubscriptions(isLoading);
    } finally {
      _$SubscriptionsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingAddSubscription(bool isLoading) {
    final _$actionInfo =
        _$SubscriptionsControllerBaseActionController.startAction(
            name: 'SubscriptionsControllerBase.setIsLoadingAddSubscription');
    try {
      return super.setIsLoadingAddSubscription(isLoading);
    } finally {
      _$SubscriptionsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
lastPage: ${lastPage},
subscription: ${subscription},
listSubscription: ${listSubscription},
removeSubscriptionUrlParam: ${removeSubscriptionUrlParam},
findSubscriptionUrlParam: ${findSubscriptionUrlParam},
addSubscriptionBodyParam: ${addSubscriptionBodyParam},
isLoadingNextPage: ${isLoadingNextPage},
isLoadingRemoveSubscription: ${isLoadingRemoveSubscription},
isLoadingFindSubscription: ${isLoadingFindSubscription},
isLoadingListSubscriptions: ${isLoadingListSubscriptions},
isLoadingAddSubscription: ${isLoadingAddSubscription}
    ''';
  }
}
