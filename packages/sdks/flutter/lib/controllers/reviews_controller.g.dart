// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ReviewsController on ReviewsControllerBase, Store {
  late final _$currentPageAtom =
      Atom(name: 'ReviewsControllerBase.currentPage', context: context);

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
      Atom(name: 'ReviewsControllerBase.lastPage', context: context);

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

  late final _$reviewAtom =
      Atom(name: 'ReviewsControllerBase.review', context: context);

  @override
  ReviewModel get review {
    _$reviewAtom.reportRead();
    return super.review;
  }

  bool _reviewIsInitialized = false;

  @override
  set review(ReviewModel value) {
    _$reviewAtom.reportWrite(value, _reviewIsInitialized ? super.review : null,
        () {
      super.review = value;
      _reviewIsInitialized = true;
    });
  }

  late final _$listReviewAtom =
      Atom(name: 'ReviewsControllerBase.listReview', context: context);

  @override
  List<ReviewModel> get listReview {
    _$listReviewAtom.reportRead();
    return super.listReview;
  }

  @override
  set listReview(List<ReviewModel> value) {
    _$listReviewAtom.reportWrite(value, super.listReview, () {
      super.listReview = value;
    });
  }

  late final _$removeReviewUrlParamAtom = Atom(
      name: 'ReviewsControllerBase.removeReviewUrlParam', context: context);

  @override
  RemoveReviewUrlParam get removeReviewUrlParam {
    _$removeReviewUrlParamAtom.reportRead();
    return super.removeReviewUrlParam;
  }

  bool _removeReviewUrlParamIsInitialized = false;

  @override
  set removeReviewUrlParam(RemoveReviewUrlParam value) {
    _$removeReviewUrlParamAtom.reportWrite(value,
        _removeReviewUrlParamIsInitialized ? super.removeReviewUrlParam : null,
        () {
      super.removeReviewUrlParam = value;
      _removeReviewUrlParamIsInitialized = true;
    });
  }

  late final _$findReviewUrlParamAtom =
      Atom(name: 'ReviewsControllerBase.findReviewUrlParam', context: context);

  @override
  FindReviewUrlParam get findReviewUrlParam {
    _$findReviewUrlParamAtom.reportRead();
    return super.findReviewUrlParam;
  }

  bool _findReviewUrlParamIsInitialized = false;

  @override
  set findReviewUrlParam(FindReviewUrlParam value) {
    _$findReviewUrlParamAtom.reportWrite(value,
        _findReviewUrlParamIsInitialized ? super.findReviewUrlParam : null, () {
      super.findReviewUrlParam = value;
      _findReviewUrlParamIsInitialized = true;
    });
  }

  late final _$listReviewsQueryParamAtom = Atom(
      name: 'ReviewsControllerBase.listReviewsQueryParam', context: context);

  @override
  ListReviewsQueryParam get listReviewsQueryParam {
    _$listReviewsQueryParamAtom.reportRead();
    return super.listReviewsQueryParam;
  }

  bool _listReviewsQueryParamIsInitialized = false;

  @override
  set listReviewsQueryParam(ListReviewsQueryParam value) {
    _$listReviewsQueryParamAtom.reportWrite(
        value,
        _listReviewsQueryParamIsInitialized
            ? super.listReviewsQueryParam
            : null, () {
      super.listReviewsQueryParam = value;
      _listReviewsQueryParamIsInitialized = true;
    });
  }

  late final _$updateReviewBodyParamAtom = Atom(
      name: 'ReviewsControllerBase.updateReviewBodyParam', context: context);

  @override
  UpdateReviewBodyParam get updateReviewBodyParam {
    _$updateReviewBodyParamAtom.reportRead();
    return super.updateReviewBodyParam;
  }

  bool _updateReviewBodyParamIsInitialized = false;

  @override
  set updateReviewBodyParam(UpdateReviewBodyParam value) {
    _$updateReviewBodyParamAtom.reportWrite(
        value,
        _updateReviewBodyParamIsInitialized
            ? super.updateReviewBodyParam
            : null, () {
      super.updateReviewBodyParam = value;
      _updateReviewBodyParamIsInitialized = true;
    });
  }

  late final _$updateReviewUrlParamAtom = Atom(
      name: 'ReviewsControllerBase.updateReviewUrlParam', context: context);

  @override
  UpdateReviewUrlParam get updateReviewUrlParam {
    _$updateReviewUrlParamAtom.reportRead();
    return super.updateReviewUrlParam;
  }

  bool _updateReviewUrlParamIsInitialized = false;

  @override
  set updateReviewUrlParam(UpdateReviewUrlParam value) {
    _$updateReviewUrlParamAtom.reportWrite(value,
        _updateReviewUrlParamIsInitialized ? super.updateReviewUrlParam : null,
        () {
      super.updateReviewUrlParam = value;
      _updateReviewUrlParamIsInitialized = true;
    });
  }

  late final _$addReviewBodyParamAtom =
      Atom(name: 'ReviewsControllerBase.addReviewBodyParam', context: context);

  @override
  AddReviewBodyParam get addReviewBodyParam {
    _$addReviewBodyParamAtom.reportRead();
    return super.addReviewBodyParam;
  }

  bool _addReviewBodyParamIsInitialized = false;

  @override
  set addReviewBodyParam(AddReviewBodyParam value) {
    _$addReviewBodyParamAtom.reportWrite(value,
        _addReviewBodyParamIsInitialized ? super.addReviewBodyParam : null, () {
      super.addReviewBodyParam = value;
      _addReviewBodyParamIsInitialized = true;
    });
  }

  late final _$editReviewBodyParamAtom =
      Atom(name: 'ReviewsControllerBase.editReviewBodyParam', context: context);

  @override
  EditReviewBodyParam get editReviewBodyParam {
    _$editReviewBodyParamAtom.reportRead();
    return super.editReviewBodyParam;
  }

  bool _editReviewBodyParamIsInitialized = false;

  @override
  set editReviewBodyParam(EditReviewBodyParam value) {
    _$editReviewBodyParamAtom.reportWrite(value,
        _editReviewBodyParamIsInitialized ? super.editReviewBodyParam : null,
        () {
      super.editReviewBodyParam = value;
      _editReviewBodyParamIsInitialized = true;
    });
  }

  late final _$editReviewUrlParamAtom =
      Atom(name: 'ReviewsControllerBase.editReviewUrlParam', context: context);

  @override
  EditReviewUrlParam get editReviewUrlParam {
    _$editReviewUrlParamAtom.reportRead();
    return super.editReviewUrlParam;
  }

  bool _editReviewUrlParamIsInitialized = false;

  @override
  set editReviewUrlParam(EditReviewUrlParam value) {
    _$editReviewUrlParamAtom.reportWrite(value,
        _editReviewUrlParamIsInitialized ? super.editReviewUrlParam : null, () {
      super.editReviewUrlParam = value;
      _editReviewUrlParamIsInitialized = true;
    });
  }

  late final _$isLoadingNextPageAtom =
      Atom(name: 'ReviewsControllerBase.isLoadingNextPage', context: context);

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

  late final _$isLoadingRemoveReviewAtom = Atom(
      name: 'ReviewsControllerBase.isLoadingRemoveReview', context: context);

  @override
  bool get isLoadingRemoveReview {
    _$isLoadingRemoveReviewAtom.reportRead();
    return super.isLoadingRemoveReview;
  }

  @override
  set isLoadingRemoveReview(bool value) {
    _$isLoadingRemoveReviewAtom.reportWrite(value, super.isLoadingRemoveReview,
        () {
      super.isLoadingRemoveReview = value;
    });
  }

  late final _$isLoadingFindReviewAtom =
      Atom(name: 'ReviewsControllerBase.isLoadingFindReview', context: context);

  @override
  bool get isLoadingFindReview {
    _$isLoadingFindReviewAtom.reportRead();
    return super.isLoadingFindReview;
  }

  @override
  set isLoadingFindReview(bool value) {
    _$isLoadingFindReviewAtom.reportWrite(value, super.isLoadingFindReview, () {
      super.isLoadingFindReview = value;
    });
  }

  late final _$isLoadingListReviewsAtom = Atom(
      name: 'ReviewsControllerBase.isLoadingListReviews', context: context);

  @override
  bool get isLoadingListReviews {
    _$isLoadingListReviewsAtom.reportRead();
    return super.isLoadingListReviews;
  }

  @override
  set isLoadingListReviews(bool value) {
    _$isLoadingListReviewsAtom.reportWrite(value, super.isLoadingListReviews,
        () {
      super.isLoadingListReviews = value;
    });
  }

  late final _$isLoadingUpdateReviewAtom = Atom(
      name: 'ReviewsControllerBase.isLoadingUpdateReview', context: context);

  @override
  bool get isLoadingUpdateReview {
    _$isLoadingUpdateReviewAtom.reportRead();
    return super.isLoadingUpdateReview;
  }

  @override
  set isLoadingUpdateReview(bool value) {
    _$isLoadingUpdateReviewAtom.reportWrite(value, super.isLoadingUpdateReview,
        () {
      super.isLoadingUpdateReview = value;
    });
  }

  late final _$isLoadingAddReviewAtom =
      Atom(name: 'ReviewsControllerBase.isLoadingAddReview', context: context);

  @override
  bool get isLoadingAddReview {
    _$isLoadingAddReviewAtom.reportRead();
    return super.isLoadingAddReview;
  }

  @override
  set isLoadingAddReview(bool value) {
    _$isLoadingAddReviewAtom.reportWrite(value, super.isLoadingAddReview, () {
      super.isLoadingAddReview = value;
    });
  }

  late final _$isLoadingEditReviewAtom =
      Atom(name: 'ReviewsControllerBase.isLoadingEditReview', context: context);

  @override
  bool get isLoadingEditReview {
    _$isLoadingEditReviewAtom.reportRead();
    return super.isLoadingEditReview;
  }

  @override
  set isLoadingEditReview(bool value) {
    _$isLoadingEditReviewAtom.reportWrite(value, super.isLoadingEditReview, () {
      super.isLoadingEditReview = value;
    });
  }

  late final _$removeReviewAsyncAction =
      AsyncAction('ReviewsControllerBase.removeReview', context: context);

  @override
  Future<bool> removeReview() {
    return _$removeReviewAsyncAction.run(() => super.removeReview());
  }

  late final _$findReviewAsyncAction =
      AsyncAction('ReviewsControllerBase.findReview', context: context);

  @override
  Future<bool> findReview() {
    return _$findReviewAsyncAction.run(() => super.findReview());
  }

  late final _$listReviewsAsyncAction =
      AsyncAction('ReviewsControllerBase.listReviews', context: context);

  @override
  Future<bool> listReviews() {
    return _$listReviewsAsyncAction.run(() => super.listReviews());
  }

  late final _$updateReviewAsyncAction =
      AsyncAction('ReviewsControllerBase.updateReview', context: context);

  @override
  Future<bool> updateReview() {
    return _$updateReviewAsyncAction.run(() => super.updateReview());
  }

  late final _$addReviewAsyncAction =
      AsyncAction('ReviewsControllerBase.addReview', context: context);

  @override
  Future<bool> addReview() {
    return _$addReviewAsyncAction.run(() => super.addReview());
  }

  late final _$editReviewAsyncAction =
      AsyncAction('ReviewsControllerBase.editReview', context: context);

  @override
  Future<bool> editReview() {
    return _$editReviewAsyncAction.run(() => super.editReview());
  }

  late final _$ReviewsControllerBaseActionController =
      ActionController(name: 'ReviewsControllerBase', context: context);

  @override
  void setCurrentPage(int data) {
    final _$actionInfo = _$ReviewsControllerBaseActionController.startAction(
        name: 'ReviewsControllerBase.setCurrentPage');
    try {
      return super.setCurrentPage(data);
    } finally {
      _$ReviewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLastPage(int data) {
    final _$actionInfo = _$ReviewsControllerBaseActionController.startAction(
        name: 'ReviewsControllerBase.setLastPage');
    try {
      return super.setLastPage(data);
    } finally {
      _$ReviewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setReview(ReviewModel data) {
    final _$actionInfo = _$ReviewsControllerBaseActionController.startAction(
        name: 'ReviewsControllerBase.setReview');
    try {
      return super.setReview(data);
    } finally {
      _$ReviewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setListReview(List<ReviewModel> data) {
    final _$actionInfo = _$ReviewsControllerBaseActionController.startAction(
        name: 'ReviewsControllerBase.setListReview');
    try {
      return super.setListReview(data);
    } finally {
      _$ReviewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRemoveReviewUrlParam(RemoveReviewUrlParam data) {
    final _$actionInfo = _$ReviewsControllerBaseActionController.startAction(
        name: 'ReviewsControllerBase.setRemoveReviewUrlParam');
    try {
      return super.setRemoveReviewUrlParam(data);
    } finally {
      _$ReviewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFindReviewUrlParam(FindReviewUrlParam data) {
    final _$actionInfo = _$ReviewsControllerBaseActionController.startAction(
        name: 'ReviewsControllerBase.setFindReviewUrlParam');
    try {
      return super.setFindReviewUrlParam(data);
    } finally {
      _$ReviewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setListReviewsQueryParam(ListReviewsQueryParam data) {
    final _$actionInfo = _$ReviewsControllerBaseActionController.startAction(
        name: 'ReviewsControllerBase.setListReviewsQueryParam');
    try {
      return super.setListReviewsQueryParam(data);
    } finally {
      _$ReviewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUpdateReviewBodyParam(UpdateReviewBodyParam data) {
    final _$actionInfo = _$ReviewsControllerBaseActionController.startAction(
        name: 'ReviewsControllerBase.setUpdateReviewBodyParam');
    try {
      return super.setUpdateReviewBodyParam(data);
    } finally {
      _$ReviewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUpdateReviewUrlParam(UpdateReviewUrlParam data) {
    final _$actionInfo = _$ReviewsControllerBaseActionController.startAction(
        name: 'ReviewsControllerBase.setUpdateReviewUrlParam');
    try {
      return super.setUpdateReviewUrlParam(data);
    } finally {
      _$ReviewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAddReviewBodyParam(AddReviewBodyParam data) {
    final _$actionInfo = _$ReviewsControllerBaseActionController.startAction(
        name: 'ReviewsControllerBase.setAddReviewBodyParam');
    try {
      return super.setAddReviewBodyParam(data);
    } finally {
      _$ReviewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEditReviewBodyParam(EditReviewBodyParam data) {
    final _$actionInfo = _$ReviewsControllerBaseActionController.startAction(
        name: 'ReviewsControllerBase.setEditReviewBodyParam');
    try {
      return super.setEditReviewBodyParam(data);
    } finally {
      _$ReviewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEditReviewUrlParam(EditReviewUrlParam data) {
    final _$actionInfo = _$ReviewsControllerBaseActionController.startAction(
        name: 'ReviewsControllerBase.setEditReviewUrlParam');
    try {
      return super.setEditReviewUrlParam(data);
    } finally {
      _$ReviewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingNextPage(bool isLoading) {
    final _$actionInfo = _$ReviewsControllerBaseActionController.startAction(
        name: 'ReviewsControllerBase.setIsLoadingNextPage');
    try {
      return super.setIsLoadingNextPage(isLoading);
    } finally {
      _$ReviewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingRemoveReview(bool isLoading) {
    final _$actionInfo = _$ReviewsControllerBaseActionController.startAction(
        name: 'ReviewsControllerBase.setIsLoadingRemoveReview');
    try {
      return super.setIsLoadingRemoveReview(isLoading);
    } finally {
      _$ReviewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingFindReview(bool isLoading) {
    final _$actionInfo = _$ReviewsControllerBaseActionController.startAction(
        name: 'ReviewsControllerBase.setIsLoadingFindReview');
    try {
      return super.setIsLoadingFindReview(isLoading);
    } finally {
      _$ReviewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingListReviews(bool isLoading) {
    final _$actionInfo = _$ReviewsControllerBaseActionController.startAction(
        name: 'ReviewsControllerBase.setIsLoadingListReviews');
    try {
      return super.setIsLoadingListReviews(isLoading);
    } finally {
      _$ReviewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingUpdateReview(bool isLoading) {
    final _$actionInfo = _$ReviewsControllerBaseActionController.startAction(
        name: 'ReviewsControllerBase.setIsLoadingUpdateReview');
    try {
      return super.setIsLoadingUpdateReview(isLoading);
    } finally {
      _$ReviewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingAddReview(bool isLoading) {
    final _$actionInfo = _$ReviewsControllerBaseActionController.startAction(
        name: 'ReviewsControllerBase.setIsLoadingAddReview');
    try {
      return super.setIsLoadingAddReview(isLoading);
    } finally {
      _$ReviewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingEditReview(bool isLoading) {
    final _$actionInfo = _$ReviewsControllerBaseActionController.startAction(
        name: 'ReviewsControllerBase.setIsLoadingEditReview');
    try {
      return super.setIsLoadingEditReview(isLoading);
    } finally {
      _$ReviewsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
lastPage: ${lastPage},
review: ${review},
listReview: ${listReview},
removeReviewUrlParam: ${removeReviewUrlParam},
findReviewUrlParam: ${findReviewUrlParam},
listReviewsQueryParam: ${listReviewsQueryParam},
updateReviewBodyParam: ${updateReviewBodyParam},
updateReviewUrlParam: ${updateReviewUrlParam},
addReviewBodyParam: ${addReviewBodyParam},
editReviewBodyParam: ${editReviewBodyParam},
editReviewUrlParam: ${editReviewUrlParam},
isLoadingNextPage: ${isLoadingNextPage},
isLoadingRemoveReview: ${isLoadingRemoveReview},
isLoadingFindReview: ${isLoadingFindReview},
isLoadingListReviews: ${isLoadingListReviews},
isLoadingUpdateReview: ${isLoadingUpdateReview},
isLoadingAddReview: ${isLoadingAddReview},
isLoadingEditReview: ${isLoadingEditReview}
    ''';
  }
}
