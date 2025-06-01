// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ReviewController on ReviewControllerBase, Store {
  late final _$addReviewBodyParamAtom =
      Atom(name: 'ReviewControllerBase.addReviewBodyParam', context: context);

  @override
  AddReviewBodyParam get addReviewBodyParam {
    _$addReviewBodyParamAtom.reportRead();
    return super.addReviewBodyParam;
  }

  @override
  set addReviewBodyParam(AddReviewBodyParam value) {
    _$addReviewBodyParamAtom.reportWrite(value, super.addReviewBodyParam, () {
      super.addReviewBodyParam = value;
    });
  }

  late final _$reviewsAtom =
      Atom(name: 'ReviewControllerBase.reviews', context: context);

  @override
  List<ReviewModel> get reviews {
    _$reviewsAtom.reportRead();
    return super.reviews;
  }

  @override
  set reviews(List<ReviewModel> value) {
    _$reviewsAtom.reportWrite(value, super.reviews, () {
      super.reviews = value;
    });
  }

  late final _$isLoadingIndexAtom =
      Atom(name: 'ReviewControllerBase.isLoadingIndex', context: context);

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
      Atom(name: 'ReviewControllerBase.isLoadingAdd', context: context);

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

  late final _$indexAsyncAction =
      AsyncAction('ReviewControllerBase.index', context: context);

  @override
  Future<void> index({required int activityId}) {
    return _$indexAsyncAction.run(() => super.index(activityId: activityId));
  }

  late final _$addAsyncAction =
      AsyncAction('ReviewControllerBase.add', context: context);

  @override
  Future<void> add(BuildContext context) {
    return _$addAsyncAction.run(() => super.add(context));
  }

  late final _$ReviewControllerBaseActionController =
      ActionController(name: 'ReviewControllerBase', context: context);

  @override
  void setAddReviewParams(
      {int? activityId, int? stars, String? description, int? userId}) {
    final _$actionInfo = _$ReviewControllerBaseActionController.startAction(
        name: 'ReviewControllerBase.setAddReviewParams');
    try {
      return super.setAddReviewParams(
          activityId: activityId,
          stars: stars,
          description: description,
          userId: userId);
    } finally {
      _$ReviewControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setReviews(List<ReviewModel> data) {
    final _$actionInfo = _$ReviewControllerBaseActionController.startAction(
        name: 'ReviewControllerBase.setReviews');
    try {
      return super.setReviews(data);
    } finally {
      _$ReviewControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingIndex(bool loading) {
    final _$actionInfo = _$ReviewControllerBaseActionController.startAction(
        name: 'ReviewControllerBase.setIsLoadingIndex');
    try {
      return super.setIsLoadingIndex(loading);
    } finally {
      _$ReviewControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingAdd(bool loading) {
    final _$actionInfo = _$ReviewControllerBaseActionController.startAction(
        name: 'ReviewControllerBase.setIsLoadingAdd');
    try {
      return super.setIsLoadingAdd(loading);
    } finally {
      _$ReviewControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
addReviewBodyParam: ${addReviewBodyParam},
reviews: ${reviews},
isLoadingIndex: ${isLoadingIndex},
isLoadingAdd: ${isLoadingAdd}
    ''';
  }
}
