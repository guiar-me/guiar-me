// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlight_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HighlightController on HighlightControllerBase, Store {
  late final _$highlightsAtom =
      Atom(name: 'HighlightControllerBase.highlights', context: context);

  @override
  List<HighlightModel> get highlights {
    _$highlightsAtom.reportRead();
    return super.highlights;
  }

  @override
  set highlights(List<HighlightModel> value) {
    _$highlightsAtom.reportWrite(value, super.highlights, () {
      super.highlights = value;
    });
  }

  late final _$isLoadingIndexAtom =
      Atom(name: 'HighlightControllerBase.isLoadingIndex', context: context);

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

  late final _$indexAsyncAction =
      AsyncAction('HighlightControllerBase.index', context: context);

  @override
  Future<void> index() {
    return _$indexAsyncAction.run(() => super.index());
  }

  late final _$HighlightControllerBaseActionController =
      ActionController(name: 'HighlightControllerBase', context: context);

  @override
  void setHighlights(List<HighlightModel> data) {
    final _$actionInfo = _$HighlightControllerBaseActionController.startAction(
        name: 'HighlightControllerBase.setHighlights');
    try {
      return super.setHighlights(data);
    } finally {
      _$HighlightControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingIndex(bool loading) {
    final _$actionInfo = _$HighlightControllerBaseActionController.startAction(
        name: 'HighlightControllerBase.setIsLoadingIndex');
    try {
      return super.setIsLoadingIndex(loading);
    } finally {
      _$HighlightControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
highlights: ${highlights},
isLoadingIndex: ${isLoadingIndex}
    ''';
  }
}
