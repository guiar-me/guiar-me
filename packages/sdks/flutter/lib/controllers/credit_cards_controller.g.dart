// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_cards_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreditCardsController on CreditCardsControllerBase, Store {
  late final _$currentPageAtom =
      Atom(name: 'CreditCardsControllerBase.currentPage', context: context);

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
      Atom(name: 'CreditCardsControllerBase.lastPage', context: context);

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

  late final _$creditCardAtom =
      Atom(name: 'CreditCardsControllerBase.creditCard', context: context);

  @override
  CreditCardModel get creditCard {
    _$creditCardAtom.reportRead();
    return super.creditCard;
  }

  bool _creditCardIsInitialized = false;

  @override
  set creditCard(CreditCardModel value) {
    _$creditCardAtom.reportWrite(
        value, _creditCardIsInitialized ? super.creditCard : null, () {
      super.creditCard = value;
      _creditCardIsInitialized = true;
    });
  }

  late final _$listCreditCardAtom =
      Atom(name: 'CreditCardsControllerBase.listCreditCard', context: context);

  @override
  List<CreditCardModel> get listCreditCard {
    _$listCreditCardAtom.reportRead();
    return super.listCreditCard;
  }

  @override
  set listCreditCard(List<CreditCardModel> value) {
    _$listCreditCardAtom.reportWrite(value, super.listCreditCard, () {
      super.listCreditCard = value;
    });
  }

  late final _$removeCreditCardUrlParamAtom = Atom(
      name: 'CreditCardsControllerBase.removeCreditCardUrlParam',
      context: context);

  @override
  RemoveCreditCardUrlParam get removeCreditCardUrlParam {
    _$removeCreditCardUrlParamAtom.reportRead();
    return super.removeCreditCardUrlParam;
  }

  bool _removeCreditCardUrlParamIsInitialized = false;

  @override
  set removeCreditCardUrlParam(RemoveCreditCardUrlParam value) {
    _$removeCreditCardUrlParamAtom.reportWrite(
        value,
        _removeCreditCardUrlParamIsInitialized
            ? super.removeCreditCardUrlParam
            : null, () {
      super.removeCreditCardUrlParam = value;
      _removeCreditCardUrlParamIsInitialized = true;
    });
  }

  late final _$findCreditCardUrlParamAtom = Atom(
      name: 'CreditCardsControllerBase.findCreditCardUrlParam',
      context: context);

  @override
  FindCreditCardUrlParam get findCreditCardUrlParam {
    _$findCreditCardUrlParamAtom.reportRead();
    return super.findCreditCardUrlParam;
  }

  bool _findCreditCardUrlParamIsInitialized = false;

  @override
  set findCreditCardUrlParam(FindCreditCardUrlParam value) {
    _$findCreditCardUrlParamAtom.reportWrite(
        value,
        _findCreditCardUrlParamIsInitialized
            ? super.findCreditCardUrlParam
            : null, () {
      super.findCreditCardUrlParam = value;
      _findCreditCardUrlParamIsInitialized = true;
    });
  }

  late final _$addCreditCardBodyParamAtom = Atom(
      name: 'CreditCardsControllerBase.addCreditCardBodyParam',
      context: context);

  @override
  AddCreditCardBodyParam get addCreditCardBodyParam {
    _$addCreditCardBodyParamAtom.reportRead();
    return super.addCreditCardBodyParam;
  }

  bool _addCreditCardBodyParamIsInitialized = false;

  @override
  set addCreditCardBodyParam(AddCreditCardBodyParam value) {
    _$addCreditCardBodyParamAtom.reportWrite(
        value,
        _addCreditCardBodyParamIsInitialized
            ? super.addCreditCardBodyParam
            : null, () {
      super.addCreditCardBodyParam = value;
      _addCreditCardBodyParamIsInitialized = true;
    });
  }

  late final _$isLoadingNextPageAtom = Atom(
      name: 'CreditCardsControllerBase.isLoadingNextPage', context: context);

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

  late final _$isLoadingRemoveCreditCardAtom = Atom(
      name: 'CreditCardsControllerBase.isLoadingRemoveCreditCard',
      context: context);

  @override
  bool get isLoadingRemoveCreditCard {
    _$isLoadingRemoveCreditCardAtom.reportRead();
    return super.isLoadingRemoveCreditCard;
  }

  @override
  set isLoadingRemoveCreditCard(bool value) {
    _$isLoadingRemoveCreditCardAtom
        .reportWrite(value, super.isLoadingRemoveCreditCard, () {
      super.isLoadingRemoveCreditCard = value;
    });
  }

  late final _$isLoadingFindCreditCardAtom = Atom(
      name: 'CreditCardsControllerBase.isLoadingFindCreditCard',
      context: context);

  @override
  bool get isLoadingFindCreditCard {
    _$isLoadingFindCreditCardAtom.reportRead();
    return super.isLoadingFindCreditCard;
  }

  @override
  set isLoadingFindCreditCard(bool value) {
    _$isLoadingFindCreditCardAtom
        .reportWrite(value, super.isLoadingFindCreditCard, () {
      super.isLoadingFindCreditCard = value;
    });
  }

  late final _$isLoadingListCreditCardsAtom = Atom(
      name: 'CreditCardsControllerBase.isLoadingListCreditCards',
      context: context);

  @override
  bool get isLoadingListCreditCards {
    _$isLoadingListCreditCardsAtom.reportRead();
    return super.isLoadingListCreditCards;
  }

  @override
  set isLoadingListCreditCards(bool value) {
    _$isLoadingListCreditCardsAtom
        .reportWrite(value, super.isLoadingListCreditCards, () {
      super.isLoadingListCreditCards = value;
    });
  }

  late final _$isLoadingAddCreditCardAtom = Atom(
      name: 'CreditCardsControllerBase.isLoadingAddCreditCard',
      context: context);

  @override
  bool get isLoadingAddCreditCard {
    _$isLoadingAddCreditCardAtom.reportRead();
    return super.isLoadingAddCreditCard;
  }

  @override
  set isLoadingAddCreditCard(bool value) {
    _$isLoadingAddCreditCardAtom
        .reportWrite(value, super.isLoadingAddCreditCard, () {
      super.isLoadingAddCreditCard = value;
    });
  }

  late final _$removeCreditCardAsyncAction = AsyncAction(
      'CreditCardsControllerBase.removeCreditCard',
      context: context);

  @override
  Future<bool> removeCreditCard() {
    return _$removeCreditCardAsyncAction.run(() => super.removeCreditCard());
  }

  late final _$findCreditCardAsyncAction =
      AsyncAction('CreditCardsControllerBase.findCreditCard', context: context);

  @override
  Future<bool> findCreditCard() {
    return _$findCreditCardAsyncAction.run(() => super.findCreditCard());
  }

  late final _$listCreditCardsAsyncAction = AsyncAction(
      'CreditCardsControllerBase.listCreditCards',
      context: context);

  @override
  Future<bool> listCreditCards() {
    return _$listCreditCardsAsyncAction.run(() => super.listCreditCards());
  }

  late final _$addCreditCardAsyncAction =
      AsyncAction('CreditCardsControllerBase.addCreditCard', context: context);

  @override
  Future<bool> addCreditCard() {
    return _$addCreditCardAsyncAction.run(() => super.addCreditCard());
  }

  late final _$CreditCardsControllerBaseActionController =
      ActionController(name: 'CreditCardsControllerBase', context: context);

  @override
  void setCurrentPage(int data) {
    final _$actionInfo = _$CreditCardsControllerBaseActionController
        .startAction(name: 'CreditCardsControllerBase.setCurrentPage');
    try {
      return super.setCurrentPage(data);
    } finally {
      _$CreditCardsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLastPage(int data) {
    final _$actionInfo = _$CreditCardsControllerBaseActionController
        .startAction(name: 'CreditCardsControllerBase.setLastPage');
    try {
      return super.setLastPage(data);
    } finally {
      _$CreditCardsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCreditCard(CreditCardModel data) {
    final _$actionInfo = _$CreditCardsControllerBaseActionController
        .startAction(name: 'CreditCardsControllerBase.setCreditCard');
    try {
      return super.setCreditCard(data);
    } finally {
      _$CreditCardsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setListCreditCard(List<CreditCardModel> data) {
    final _$actionInfo = _$CreditCardsControllerBaseActionController
        .startAction(name: 'CreditCardsControllerBase.setListCreditCard');
    try {
      return super.setListCreditCard(data);
    } finally {
      _$CreditCardsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRemoveCreditCardUrlParam(RemoveCreditCardUrlParam data) {
    final _$actionInfo =
        _$CreditCardsControllerBaseActionController.startAction(
            name: 'CreditCardsControllerBase.setRemoveCreditCardUrlParam');
    try {
      return super.setRemoveCreditCardUrlParam(data);
    } finally {
      _$CreditCardsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFindCreditCardUrlParam(FindCreditCardUrlParam data) {
    final _$actionInfo =
        _$CreditCardsControllerBaseActionController.startAction(
            name: 'CreditCardsControllerBase.setFindCreditCardUrlParam');
    try {
      return super.setFindCreditCardUrlParam(data);
    } finally {
      _$CreditCardsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAddCreditCardBodyParam(AddCreditCardBodyParam data) {
    final _$actionInfo =
        _$CreditCardsControllerBaseActionController.startAction(
            name: 'CreditCardsControllerBase.setAddCreditCardBodyParam');
    try {
      return super.setAddCreditCardBodyParam(data);
    } finally {
      _$CreditCardsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingNextPage(bool isLoading) {
    final _$actionInfo = _$CreditCardsControllerBaseActionController
        .startAction(name: 'CreditCardsControllerBase.setIsLoadingNextPage');
    try {
      return super.setIsLoadingNextPage(isLoading);
    } finally {
      _$CreditCardsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingRemoveCreditCard(bool isLoading) {
    final _$actionInfo =
        _$CreditCardsControllerBaseActionController.startAction(
            name: 'CreditCardsControllerBase.setIsLoadingRemoveCreditCard');
    try {
      return super.setIsLoadingRemoveCreditCard(isLoading);
    } finally {
      _$CreditCardsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingFindCreditCard(bool isLoading) {
    final _$actionInfo =
        _$CreditCardsControllerBaseActionController.startAction(
            name: 'CreditCardsControllerBase.setIsLoadingFindCreditCard');
    try {
      return super.setIsLoadingFindCreditCard(isLoading);
    } finally {
      _$CreditCardsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingListCreditCards(bool isLoading) {
    final _$actionInfo =
        _$CreditCardsControllerBaseActionController.startAction(
            name: 'CreditCardsControllerBase.setIsLoadingListCreditCards');
    try {
      return super.setIsLoadingListCreditCards(isLoading);
    } finally {
      _$CreditCardsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingAddCreditCard(bool isLoading) {
    final _$actionInfo =
        _$CreditCardsControllerBaseActionController.startAction(
            name: 'CreditCardsControllerBase.setIsLoadingAddCreditCard');
    try {
      return super.setIsLoadingAddCreditCard(isLoading);
    } finally {
      _$CreditCardsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
lastPage: ${lastPage},
creditCard: ${creditCard},
listCreditCard: ${listCreditCard},
removeCreditCardUrlParam: ${removeCreditCardUrlParam},
findCreditCardUrlParam: ${findCreditCardUrlParam},
addCreditCardBodyParam: ${addCreditCardBodyParam},
isLoadingNextPage: ${isLoadingNextPage},
isLoadingRemoveCreditCard: ${isLoadingRemoveCreditCard},
isLoadingFindCreditCard: ${isLoadingFindCreditCard},
isLoadingListCreditCards: ${isLoadingListCreditCards},
isLoadingAddCreditCard: ${isLoadingAddCreditCard}
    ''';
  }
}
