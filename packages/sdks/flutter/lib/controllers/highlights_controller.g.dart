// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlights_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HighlightsController on HighlightsControllerBase, Store {
  late final _$currentPageAtom =
      Atom(name: 'HighlightsControllerBase.currentPage', context: context);

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
      Atom(name: 'HighlightsControllerBase.lastPage', context: context);

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

  late final _$highlightAtom =
      Atom(name: 'HighlightsControllerBase.highlight', context: context);

  @override
  HighlightModel get highlight {
    _$highlightAtom.reportRead();
    return super.highlight;
  }

  bool _highlightIsInitialized = false;

  @override
  set highlight(HighlightModel value) {
    _$highlightAtom.reportWrite(
        value, _highlightIsInitialized ? super.highlight : null, () {
      super.highlight = value;
      _highlightIsInitialized = true;
    });
  }

  late final _$listHighlightAtom =
      Atom(name: 'HighlightsControllerBase.listHighlight', context: context);

  @override
  List<HighlightModel> get listHighlight {
    _$listHighlightAtom.reportRead();
    return super.listHighlight;
  }

  @override
  set listHighlight(List<HighlightModel> value) {
    _$listHighlightAtom.reportWrite(value, super.listHighlight, () {
      super.listHighlight = value;
    });
  }

  late final _$removeHighlightUrlParamAtom = Atom(
      name: 'HighlightsControllerBase.removeHighlightUrlParam',
      context: context);

  @override
  RemoveHighlightUrlParam get removeHighlightUrlParam {
    _$removeHighlightUrlParamAtom.reportRead();
    return super.removeHighlightUrlParam;
  }

  bool _removeHighlightUrlParamIsInitialized = false;

  @override
  set removeHighlightUrlParam(RemoveHighlightUrlParam value) {
    _$removeHighlightUrlParamAtom.reportWrite(
        value,
        _removeHighlightUrlParamIsInitialized
            ? super.removeHighlightUrlParam
            : null, () {
      super.removeHighlightUrlParam = value;
      _removeHighlightUrlParamIsInitialized = true;
    });
  }

  late final _$findHighlightUrlParamAtom = Atom(
      name: 'HighlightsControllerBase.findHighlightUrlParam', context: context);

  @override
  FindHighlightUrlParam get findHighlightUrlParam {
    _$findHighlightUrlParamAtom.reportRead();
    return super.findHighlightUrlParam;
  }

  bool _findHighlightUrlParamIsInitialized = false;

  @override
  set findHighlightUrlParam(FindHighlightUrlParam value) {
    _$findHighlightUrlParamAtom.reportWrite(
        value,
        _findHighlightUrlParamIsInitialized
            ? super.findHighlightUrlParam
            : null, () {
      super.findHighlightUrlParam = value;
      _findHighlightUrlParamIsInitialized = true;
    });
  }

  late final _$addHighlightBodyParamAtom = Atom(
      name: 'HighlightsControllerBase.addHighlightBodyParam', context: context);

  @override
  AddHighlightBodyParam get addHighlightBodyParam {
    _$addHighlightBodyParamAtom.reportRead();
    return super.addHighlightBodyParam;
  }

  bool _addHighlightBodyParamIsInitialized = false;

  @override
  set addHighlightBodyParam(AddHighlightBodyParam value) {
    _$addHighlightBodyParamAtom.reportWrite(
        value,
        _addHighlightBodyParamIsInitialized
            ? super.addHighlightBodyParam
            : null, () {
      super.addHighlightBodyParam = value;
      _addHighlightBodyParamIsInitialized = true;
    });
  }

  late final _$editHighlightBodyParamAtom = Atom(
      name: 'HighlightsControllerBase.editHighlightBodyParam',
      context: context);

  @override
  EditHighlightBodyParam get editHighlightBodyParam {
    _$editHighlightBodyParamAtom.reportRead();
    return super.editHighlightBodyParam;
  }

  bool _editHighlightBodyParamIsInitialized = false;

  @override
  set editHighlightBodyParam(EditHighlightBodyParam value) {
    _$editHighlightBodyParamAtom.reportWrite(
        value,
        _editHighlightBodyParamIsInitialized
            ? super.editHighlightBodyParam
            : null, () {
      super.editHighlightBodyParam = value;
      _editHighlightBodyParamIsInitialized = true;
    });
  }

  late final _$editHighlightUrlParamAtom = Atom(
      name: 'HighlightsControllerBase.editHighlightUrlParam', context: context);

  @override
  EditHighlightUrlParam get editHighlightUrlParam {
    _$editHighlightUrlParamAtom.reportRead();
    return super.editHighlightUrlParam;
  }

  bool _editHighlightUrlParamIsInitialized = false;

  @override
  set editHighlightUrlParam(EditHighlightUrlParam value) {
    _$editHighlightUrlParamAtom.reportWrite(
        value,
        _editHighlightUrlParamIsInitialized
            ? super.editHighlightUrlParam
            : null, () {
      super.editHighlightUrlParam = value;
      _editHighlightUrlParamIsInitialized = true;
    });
  }

  late final _$isLoadingNextPageAtom = Atom(
      name: 'HighlightsControllerBase.isLoadingNextPage', context: context);

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

  late final _$isLoadingRemoveHighlightAtom = Atom(
      name: 'HighlightsControllerBase.isLoadingRemoveHighlight',
      context: context);

  @override
  bool get isLoadingRemoveHighlight {
    _$isLoadingRemoveHighlightAtom.reportRead();
    return super.isLoadingRemoveHighlight;
  }

  @override
  set isLoadingRemoveHighlight(bool value) {
    _$isLoadingRemoveHighlightAtom
        .reportWrite(value, super.isLoadingRemoveHighlight, () {
      super.isLoadingRemoveHighlight = value;
    });
  }

  late final _$isLoadingFindHighlightAtom = Atom(
      name: 'HighlightsControllerBase.isLoadingFindHighlight',
      context: context);

  @override
  bool get isLoadingFindHighlight {
    _$isLoadingFindHighlightAtom.reportRead();
    return super.isLoadingFindHighlight;
  }

  @override
  set isLoadingFindHighlight(bool value) {
    _$isLoadingFindHighlightAtom
        .reportWrite(value, super.isLoadingFindHighlight, () {
      super.isLoadingFindHighlight = value;
    });
  }

  late final _$isLoadingListHighlightsAtom = Atom(
      name: 'HighlightsControllerBase.isLoadingListHighlights',
      context: context);

  @override
  bool get isLoadingListHighlights {
    _$isLoadingListHighlightsAtom.reportRead();
    return super.isLoadingListHighlights;
  }

  @override
  set isLoadingListHighlights(bool value) {
    _$isLoadingListHighlightsAtom
        .reportWrite(value, super.isLoadingListHighlights, () {
      super.isLoadingListHighlights = value;
    });
  }

  late final _$isLoadingAddHighlightAtom = Atom(
      name: 'HighlightsControllerBase.isLoadingAddHighlight', context: context);

  @override
  bool get isLoadingAddHighlight {
    _$isLoadingAddHighlightAtom.reportRead();
    return super.isLoadingAddHighlight;
  }

  @override
  set isLoadingAddHighlight(bool value) {
    _$isLoadingAddHighlightAtom.reportWrite(value, super.isLoadingAddHighlight,
        () {
      super.isLoadingAddHighlight = value;
    });
  }

  late final _$isLoadingEditHighlightAtom = Atom(
      name: 'HighlightsControllerBase.isLoadingEditHighlight',
      context: context);

  @override
  bool get isLoadingEditHighlight {
    _$isLoadingEditHighlightAtom.reportRead();
    return super.isLoadingEditHighlight;
  }

  @override
  set isLoadingEditHighlight(bool value) {
    _$isLoadingEditHighlightAtom
        .reportWrite(value, super.isLoadingEditHighlight, () {
      super.isLoadingEditHighlight = value;
    });
  }

  late final _$removeHighlightAsyncAction =
      AsyncAction('HighlightsControllerBase.removeHighlight', context: context);

  @override
  Future<bool> removeHighlight() {
    return _$removeHighlightAsyncAction.run(() => super.removeHighlight());
  }

  late final _$findHighlightAsyncAction =
      AsyncAction('HighlightsControllerBase.findHighlight', context: context);

  @override
  Future<bool> findHighlight() {
    return _$findHighlightAsyncAction.run(() => super.findHighlight());
  }

  late final _$listHighlightsAsyncAction =
      AsyncAction('HighlightsControllerBase.listHighlights', context: context);

  @override
  Future<bool> listHighlights() {
    return _$listHighlightsAsyncAction.run(() => super.listHighlights());
  }

  late final _$addHighlightAsyncAction =
      AsyncAction('HighlightsControllerBase.addHighlight', context: context);

  @override
  Future<bool> addHighlight() {
    return _$addHighlightAsyncAction.run(() => super.addHighlight());
  }

  late final _$editHighlightAsyncAction =
      AsyncAction('HighlightsControllerBase.editHighlight', context: context);

  @override
  Future<bool> editHighlight() {
    return _$editHighlightAsyncAction.run(() => super.editHighlight());
  }

  late final _$HighlightsControllerBaseActionController =
      ActionController(name: 'HighlightsControllerBase', context: context);

  @override
  void setCurrentPage(int data) {
    final _$actionInfo = _$HighlightsControllerBaseActionController.startAction(
        name: 'HighlightsControllerBase.setCurrentPage');
    try {
      return super.setCurrentPage(data);
    } finally {
      _$HighlightsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLastPage(int data) {
    final _$actionInfo = _$HighlightsControllerBaseActionController.startAction(
        name: 'HighlightsControllerBase.setLastPage');
    try {
      return super.setLastPage(data);
    } finally {
      _$HighlightsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setHighlight(HighlightModel data) {
    final _$actionInfo = _$HighlightsControllerBaseActionController.startAction(
        name: 'HighlightsControllerBase.setHighlight');
    try {
      return super.setHighlight(data);
    } finally {
      _$HighlightsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setListHighlight(List<HighlightModel> data) {
    final _$actionInfo = _$HighlightsControllerBaseActionController.startAction(
        name: 'HighlightsControllerBase.setListHighlight');
    try {
      return super.setListHighlight(data);
    } finally {
      _$HighlightsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRemoveHighlightUrlParam(RemoveHighlightUrlParam data) {
    final _$actionInfo = _$HighlightsControllerBaseActionController.startAction(
        name: 'HighlightsControllerBase.setRemoveHighlightUrlParam');
    try {
      return super.setRemoveHighlightUrlParam(data);
    } finally {
      _$HighlightsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFindHighlightUrlParam(FindHighlightUrlParam data) {
    final _$actionInfo = _$HighlightsControllerBaseActionController.startAction(
        name: 'HighlightsControllerBase.setFindHighlightUrlParam');
    try {
      return super.setFindHighlightUrlParam(data);
    } finally {
      _$HighlightsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAddHighlightBodyParam(AddHighlightBodyParam data) {
    final _$actionInfo = _$HighlightsControllerBaseActionController.startAction(
        name: 'HighlightsControllerBase.setAddHighlightBodyParam');
    try {
      return super.setAddHighlightBodyParam(data);
    } finally {
      _$HighlightsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEditHighlightBodyParam(EditHighlightBodyParam data) {
    final _$actionInfo = _$HighlightsControllerBaseActionController.startAction(
        name: 'HighlightsControllerBase.setEditHighlightBodyParam');
    try {
      return super.setEditHighlightBodyParam(data);
    } finally {
      _$HighlightsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEditHighlightUrlParam(EditHighlightUrlParam data) {
    final _$actionInfo = _$HighlightsControllerBaseActionController.startAction(
        name: 'HighlightsControllerBase.setEditHighlightUrlParam');
    try {
      return super.setEditHighlightUrlParam(data);
    } finally {
      _$HighlightsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingNextPage(bool isLoading) {
    final _$actionInfo = _$HighlightsControllerBaseActionController.startAction(
        name: 'HighlightsControllerBase.setIsLoadingNextPage');
    try {
      return super.setIsLoadingNextPage(isLoading);
    } finally {
      _$HighlightsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingRemoveHighlight(bool isLoading) {
    final _$actionInfo = _$HighlightsControllerBaseActionController.startAction(
        name: 'HighlightsControllerBase.setIsLoadingRemoveHighlight');
    try {
      return super.setIsLoadingRemoveHighlight(isLoading);
    } finally {
      _$HighlightsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingFindHighlight(bool isLoading) {
    final _$actionInfo = _$HighlightsControllerBaseActionController.startAction(
        name: 'HighlightsControllerBase.setIsLoadingFindHighlight');
    try {
      return super.setIsLoadingFindHighlight(isLoading);
    } finally {
      _$HighlightsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingListHighlights(bool isLoading) {
    final _$actionInfo = _$HighlightsControllerBaseActionController.startAction(
        name: 'HighlightsControllerBase.setIsLoadingListHighlights');
    try {
      return super.setIsLoadingListHighlights(isLoading);
    } finally {
      _$HighlightsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingAddHighlight(bool isLoading) {
    final _$actionInfo = _$HighlightsControllerBaseActionController.startAction(
        name: 'HighlightsControllerBase.setIsLoadingAddHighlight');
    try {
      return super.setIsLoadingAddHighlight(isLoading);
    } finally {
      _$HighlightsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingEditHighlight(bool isLoading) {
    final _$actionInfo = _$HighlightsControllerBaseActionController.startAction(
        name: 'HighlightsControllerBase.setIsLoadingEditHighlight');
    try {
      return super.setIsLoadingEditHighlight(isLoading);
    } finally {
      _$HighlightsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
lastPage: ${lastPage},
highlight: ${highlight},
listHighlight: ${listHighlight},
removeHighlightUrlParam: ${removeHighlightUrlParam},
findHighlightUrlParam: ${findHighlightUrlParam},
addHighlightBodyParam: ${addHighlightBodyParam},
editHighlightBodyParam: ${editHighlightBodyParam},
editHighlightUrlParam: ${editHighlightUrlParam},
isLoadingNextPage: ${isLoadingNextPage},
isLoadingRemoveHighlight: ${isLoadingRemoveHighlight},
isLoadingFindHighlight: ${isLoadingFindHighlight},
isLoadingListHighlights: ${isLoadingListHighlights},
isLoadingAddHighlight: ${isLoadingAddHighlight},
isLoadingEditHighlight: ${isLoadingEditHighlight}
    ''';
  }
}
