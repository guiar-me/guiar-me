// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupons_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CouponsController on CouponsControllerBase, Store {
  late final _$currentPageAtom =
      Atom(name: 'CouponsControllerBase.currentPage', context: context);

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
      Atom(name: 'CouponsControllerBase.lastPage', context: context);

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

  late final _$couponAtom =
      Atom(name: 'CouponsControllerBase.coupon', context: context);

  @override
  CouponModel get coupon {
    _$couponAtom.reportRead();
    return super.coupon;
  }

  bool _couponIsInitialized = false;

  @override
  set coupon(CouponModel value) {
    _$couponAtom.reportWrite(value, _couponIsInitialized ? super.coupon : null,
        () {
      super.coupon = value;
      _couponIsInitialized = true;
    });
  }

  late final _$listCouponAtom =
      Atom(name: 'CouponsControllerBase.listCoupon', context: context);

  @override
  List<CouponModel> get listCoupon {
    _$listCouponAtom.reportRead();
    return super.listCoupon;
  }

  @override
  set listCoupon(List<CouponModel> value) {
    _$listCouponAtom.reportWrite(value, super.listCoupon, () {
      super.listCoupon = value;
    });
  }

  late final _$removeCouponUrlParamAtom = Atom(
      name: 'CouponsControllerBase.removeCouponUrlParam', context: context);

  @override
  RemoveCouponUrlParam get removeCouponUrlParam {
    _$removeCouponUrlParamAtom.reportRead();
    return super.removeCouponUrlParam;
  }

  bool _removeCouponUrlParamIsInitialized = false;

  @override
  set removeCouponUrlParam(RemoveCouponUrlParam value) {
    _$removeCouponUrlParamAtom.reportWrite(value,
        _removeCouponUrlParamIsInitialized ? super.removeCouponUrlParam : null,
        () {
      super.removeCouponUrlParam = value;
      _removeCouponUrlParamIsInitialized = true;
    });
  }

  late final _$findCouponUrlParamAtom =
      Atom(name: 'CouponsControllerBase.findCouponUrlParam', context: context);

  @override
  FindCouponUrlParam get findCouponUrlParam {
    _$findCouponUrlParamAtom.reportRead();
    return super.findCouponUrlParam;
  }

  bool _findCouponUrlParamIsInitialized = false;

  @override
  set findCouponUrlParam(FindCouponUrlParam value) {
    _$findCouponUrlParamAtom.reportWrite(value,
        _findCouponUrlParamIsInitialized ? super.findCouponUrlParam : null, () {
      super.findCouponUrlParam = value;
      _findCouponUrlParamIsInitialized = true;
    });
  }

  late final _$listCouponsQueryParamAtom = Atom(
      name: 'CouponsControllerBase.listCouponsQueryParam', context: context);

  @override
  ListCouponsQueryParam get listCouponsQueryParam {
    _$listCouponsQueryParamAtom.reportRead();
    return super.listCouponsQueryParam;
  }

  bool _listCouponsQueryParamIsInitialized = false;

  @override
  set listCouponsQueryParam(ListCouponsQueryParam value) {
    _$listCouponsQueryParamAtom.reportWrite(
        value,
        _listCouponsQueryParamIsInitialized
            ? super.listCouponsQueryParam
            : null, () {
      super.listCouponsQueryParam = value;
      _listCouponsQueryParamIsInitialized = true;
    });
  }

  late final _$addCouponBodyParamAtom =
      Atom(name: 'CouponsControllerBase.addCouponBodyParam', context: context);

  @override
  AddCouponBodyParam get addCouponBodyParam {
    _$addCouponBodyParamAtom.reportRead();
    return super.addCouponBodyParam;
  }

  bool _addCouponBodyParamIsInitialized = false;

  @override
  set addCouponBodyParam(AddCouponBodyParam value) {
    _$addCouponBodyParamAtom.reportWrite(value,
        _addCouponBodyParamIsInitialized ? super.addCouponBodyParam : null, () {
      super.addCouponBodyParam = value;
      _addCouponBodyParamIsInitialized = true;
    });
  }

  late final _$editCouponBodyParamAtom =
      Atom(name: 'CouponsControllerBase.editCouponBodyParam', context: context);

  @override
  EditCouponBodyParam get editCouponBodyParam {
    _$editCouponBodyParamAtom.reportRead();
    return super.editCouponBodyParam;
  }

  bool _editCouponBodyParamIsInitialized = false;

  @override
  set editCouponBodyParam(EditCouponBodyParam value) {
    _$editCouponBodyParamAtom.reportWrite(value,
        _editCouponBodyParamIsInitialized ? super.editCouponBodyParam : null,
        () {
      super.editCouponBodyParam = value;
      _editCouponBodyParamIsInitialized = true;
    });
  }

  late final _$editCouponUrlParamAtom =
      Atom(name: 'CouponsControllerBase.editCouponUrlParam', context: context);

  @override
  EditCouponUrlParam get editCouponUrlParam {
    _$editCouponUrlParamAtom.reportRead();
    return super.editCouponUrlParam;
  }

  bool _editCouponUrlParamIsInitialized = false;

  @override
  set editCouponUrlParam(EditCouponUrlParam value) {
    _$editCouponUrlParamAtom.reportWrite(value,
        _editCouponUrlParamIsInitialized ? super.editCouponUrlParam : null, () {
      super.editCouponUrlParam = value;
      _editCouponUrlParamIsInitialized = true;
    });
  }

  late final _$isLoadingNextPageAtom =
      Atom(name: 'CouponsControllerBase.isLoadingNextPage', context: context);

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

  late final _$isLoadingRemoveCouponAtom = Atom(
      name: 'CouponsControllerBase.isLoadingRemoveCoupon', context: context);

  @override
  bool get isLoadingRemoveCoupon {
    _$isLoadingRemoveCouponAtom.reportRead();
    return super.isLoadingRemoveCoupon;
  }

  @override
  set isLoadingRemoveCoupon(bool value) {
    _$isLoadingRemoveCouponAtom.reportWrite(value, super.isLoadingRemoveCoupon,
        () {
      super.isLoadingRemoveCoupon = value;
    });
  }

  late final _$isLoadingFindCouponAtom =
      Atom(name: 'CouponsControllerBase.isLoadingFindCoupon', context: context);

  @override
  bool get isLoadingFindCoupon {
    _$isLoadingFindCouponAtom.reportRead();
    return super.isLoadingFindCoupon;
  }

  @override
  set isLoadingFindCoupon(bool value) {
    _$isLoadingFindCouponAtom.reportWrite(value, super.isLoadingFindCoupon, () {
      super.isLoadingFindCoupon = value;
    });
  }

  late final _$isLoadingListCouponsAtom = Atom(
      name: 'CouponsControllerBase.isLoadingListCoupons', context: context);

  @override
  bool get isLoadingListCoupons {
    _$isLoadingListCouponsAtom.reportRead();
    return super.isLoadingListCoupons;
  }

  @override
  set isLoadingListCoupons(bool value) {
    _$isLoadingListCouponsAtom.reportWrite(value, super.isLoadingListCoupons,
        () {
      super.isLoadingListCoupons = value;
    });
  }

  late final _$isLoadingAddCouponAtom =
      Atom(name: 'CouponsControllerBase.isLoadingAddCoupon', context: context);

  @override
  bool get isLoadingAddCoupon {
    _$isLoadingAddCouponAtom.reportRead();
    return super.isLoadingAddCoupon;
  }

  @override
  set isLoadingAddCoupon(bool value) {
    _$isLoadingAddCouponAtom.reportWrite(value, super.isLoadingAddCoupon, () {
      super.isLoadingAddCoupon = value;
    });
  }

  late final _$isLoadingEditCouponAtom =
      Atom(name: 'CouponsControllerBase.isLoadingEditCoupon', context: context);

  @override
  bool get isLoadingEditCoupon {
    _$isLoadingEditCouponAtom.reportRead();
    return super.isLoadingEditCoupon;
  }

  @override
  set isLoadingEditCoupon(bool value) {
    _$isLoadingEditCouponAtom.reportWrite(value, super.isLoadingEditCoupon, () {
      super.isLoadingEditCoupon = value;
    });
  }

  late final _$removeCouponAsyncAction =
      AsyncAction('CouponsControllerBase.removeCoupon', context: context);

  @override
  Future<bool> removeCoupon() {
    return _$removeCouponAsyncAction.run(() => super.removeCoupon());
  }

  late final _$findCouponAsyncAction =
      AsyncAction('CouponsControllerBase.findCoupon', context: context);

  @override
  Future<bool> findCoupon() {
    return _$findCouponAsyncAction.run(() => super.findCoupon());
  }

  late final _$listCouponsAsyncAction =
      AsyncAction('CouponsControllerBase.listCoupons', context: context);

  @override
  Future<bool> listCoupons() {
    return _$listCouponsAsyncAction.run(() => super.listCoupons());
  }

  late final _$addCouponAsyncAction =
      AsyncAction('CouponsControllerBase.addCoupon', context: context);

  @override
  Future<bool> addCoupon() {
    return _$addCouponAsyncAction.run(() => super.addCoupon());
  }

  late final _$editCouponAsyncAction =
      AsyncAction('CouponsControllerBase.editCoupon', context: context);

  @override
  Future<bool> editCoupon() {
    return _$editCouponAsyncAction.run(() => super.editCoupon());
  }

  late final _$CouponsControllerBaseActionController =
      ActionController(name: 'CouponsControllerBase', context: context);

  @override
  void setCurrentPage(int data) {
    final _$actionInfo = _$CouponsControllerBaseActionController.startAction(
        name: 'CouponsControllerBase.setCurrentPage');
    try {
      return super.setCurrentPage(data);
    } finally {
      _$CouponsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLastPage(int data) {
    final _$actionInfo = _$CouponsControllerBaseActionController.startAction(
        name: 'CouponsControllerBase.setLastPage');
    try {
      return super.setLastPage(data);
    } finally {
      _$CouponsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCoupon(CouponModel data) {
    final _$actionInfo = _$CouponsControllerBaseActionController.startAction(
        name: 'CouponsControllerBase.setCoupon');
    try {
      return super.setCoupon(data);
    } finally {
      _$CouponsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setListCoupon(List<CouponModel> data) {
    final _$actionInfo = _$CouponsControllerBaseActionController.startAction(
        name: 'CouponsControllerBase.setListCoupon');
    try {
      return super.setListCoupon(data);
    } finally {
      _$CouponsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRemoveCouponUrlParam(RemoveCouponUrlParam data) {
    final _$actionInfo = _$CouponsControllerBaseActionController.startAction(
        name: 'CouponsControllerBase.setRemoveCouponUrlParam');
    try {
      return super.setRemoveCouponUrlParam(data);
    } finally {
      _$CouponsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFindCouponUrlParam(FindCouponUrlParam data) {
    final _$actionInfo = _$CouponsControllerBaseActionController.startAction(
        name: 'CouponsControllerBase.setFindCouponUrlParam');
    try {
      return super.setFindCouponUrlParam(data);
    } finally {
      _$CouponsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setListCouponsQueryParam(ListCouponsQueryParam data) {
    final _$actionInfo = _$CouponsControllerBaseActionController.startAction(
        name: 'CouponsControllerBase.setListCouponsQueryParam');
    try {
      return super.setListCouponsQueryParam(data);
    } finally {
      _$CouponsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAddCouponBodyParam(AddCouponBodyParam data) {
    final _$actionInfo = _$CouponsControllerBaseActionController.startAction(
        name: 'CouponsControllerBase.setAddCouponBodyParam');
    try {
      return super.setAddCouponBodyParam(data);
    } finally {
      _$CouponsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEditCouponBodyParam(EditCouponBodyParam data) {
    final _$actionInfo = _$CouponsControllerBaseActionController.startAction(
        name: 'CouponsControllerBase.setEditCouponBodyParam');
    try {
      return super.setEditCouponBodyParam(data);
    } finally {
      _$CouponsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEditCouponUrlParam(EditCouponUrlParam data) {
    final _$actionInfo = _$CouponsControllerBaseActionController.startAction(
        name: 'CouponsControllerBase.setEditCouponUrlParam');
    try {
      return super.setEditCouponUrlParam(data);
    } finally {
      _$CouponsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingNextPage(bool isLoading) {
    final _$actionInfo = _$CouponsControllerBaseActionController.startAction(
        name: 'CouponsControllerBase.setIsLoadingNextPage');
    try {
      return super.setIsLoadingNextPage(isLoading);
    } finally {
      _$CouponsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingRemoveCoupon(bool isLoading) {
    final _$actionInfo = _$CouponsControllerBaseActionController.startAction(
        name: 'CouponsControllerBase.setIsLoadingRemoveCoupon');
    try {
      return super.setIsLoadingRemoveCoupon(isLoading);
    } finally {
      _$CouponsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingFindCoupon(bool isLoading) {
    final _$actionInfo = _$CouponsControllerBaseActionController.startAction(
        name: 'CouponsControllerBase.setIsLoadingFindCoupon');
    try {
      return super.setIsLoadingFindCoupon(isLoading);
    } finally {
      _$CouponsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingListCoupons(bool isLoading) {
    final _$actionInfo = _$CouponsControllerBaseActionController.startAction(
        name: 'CouponsControllerBase.setIsLoadingListCoupons');
    try {
      return super.setIsLoadingListCoupons(isLoading);
    } finally {
      _$CouponsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingAddCoupon(bool isLoading) {
    final _$actionInfo = _$CouponsControllerBaseActionController.startAction(
        name: 'CouponsControllerBase.setIsLoadingAddCoupon');
    try {
      return super.setIsLoadingAddCoupon(isLoading);
    } finally {
      _$CouponsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingEditCoupon(bool isLoading) {
    final _$actionInfo = _$CouponsControllerBaseActionController.startAction(
        name: 'CouponsControllerBase.setIsLoadingEditCoupon');
    try {
      return super.setIsLoadingEditCoupon(isLoading);
    } finally {
      _$CouponsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
lastPage: ${lastPage},
coupon: ${coupon},
listCoupon: ${listCoupon},
removeCouponUrlParam: ${removeCouponUrlParam},
findCouponUrlParam: ${findCouponUrlParam},
listCouponsQueryParam: ${listCouponsQueryParam},
addCouponBodyParam: ${addCouponBodyParam},
editCouponBodyParam: ${editCouponBodyParam},
editCouponUrlParam: ${editCouponUrlParam},
isLoadingNextPage: ${isLoadingNextPage},
isLoadingRemoveCoupon: ${isLoadingRemoveCoupon},
isLoadingFindCoupon: ${isLoadingFindCoupon},
isLoadingListCoupons: ${isLoadingListCoupons},
isLoadingAddCoupon: ${isLoadingAddCoupon},
isLoadingEditCoupon: ${isLoadingEditCoupon}
    ''';
  }
}
