// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legal_contents_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LegalContentsController on LegalContentsControllerBase, Store {
  late final _$legalContentAtom =
      Atom(name: 'LegalContentsControllerBase.legalContent', context: context);

  @override
  LegalContentModel get legalContent {
    _$legalContentAtom.reportRead();
    return super.legalContent;
  }

  bool _legalContentIsInitialized = false;

  @override
  set legalContent(LegalContentModel value) {
    _$legalContentAtom.reportWrite(
        value, _legalContentIsInitialized ? super.legalContent : null, () {
      super.legalContent = value;
      _legalContentIsInitialized = true;
    });
  }

  late final _$findLegalContentUrlParamAtom = Atom(
      name: 'LegalContentsControllerBase.findLegalContentUrlParam',
      context: context);

  @override
  FindLegalContentUrlParam get findLegalContentUrlParam {
    _$findLegalContentUrlParamAtom.reportRead();
    return super.findLegalContentUrlParam;
  }

  bool _findLegalContentUrlParamIsInitialized = false;

  @override
  set findLegalContentUrlParam(FindLegalContentUrlParam value) {
    _$findLegalContentUrlParamAtom.reportWrite(
        value,
        _findLegalContentUrlParamIsInitialized
            ? super.findLegalContentUrlParam
            : null, () {
      super.findLegalContentUrlParam = value;
      _findLegalContentUrlParamIsInitialized = true;
    });
  }

  late final _$editLegalContentBodyParamAtom = Atom(
      name: 'LegalContentsControllerBase.editLegalContentBodyParam',
      context: context);

  @override
  EditLegalContentBodyParam get editLegalContentBodyParam {
    _$editLegalContentBodyParamAtom.reportRead();
    return super.editLegalContentBodyParam;
  }

  bool _editLegalContentBodyParamIsInitialized = false;

  @override
  set editLegalContentBodyParam(EditLegalContentBodyParam value) {
    _$editLegalContentBodyParamAtom.reportWrite(
        value,
        _editLegalContentBodyParamIsInitialized
            ? super.editLegalContentBodyParam
            : null, () {
      super.editLegalContentBodyParam = value;
      _editLegalContentBodyParamIsInitialized = true;
    });
  }

  late final _$editLegalContentUrlParamAtom = Atom(
      name: 'LegalContentsControllerBase.editLegalContentUrlParam',
      context: context);

  @override
  EditLegalContentUrlParam get editLegalContentUrlParam {
    _$editLegalContentUrlParamAtom.reportRead();
    return super.editLegalContentUrlParam;
  }

  bool _editLegalContentUrlParamIsInitialized = false;

  @override
  set editLegalContentUrlParam(EditLegalContentUrlParam value) {
    _$editLegalContentUrlParamAtom.reportWrite(
        value,
        _editLegalContentUrlParamIsInitialized
            ? super.editLegalContentUrlParam
            : null, () {
      super.editLegalContentUrlParam = value;
      _editLegalContentUrlParamIsInitialized = true;
    });
  }

  late final _$isLoadingFindLegalContentAtom = Atom(
      name: 'LegalContentsControllerBase.isLoadingFindLegalContent',
      context: context);

  @override
  bool get isLoadingFindLegalContent {
    _$isLoadingFindLegalContentAtom.reportRead();
    return super.isLoadingFindLegalContent;
  }

  @override
  set isLoadingFindLegalContent(bool value) {
    _$isLoadingFindLegalContentAtom
        .reportWrite(value, super.isLoadingFindLegalContent, () {
      super.isLoadingFindLegalContent = value;
    });
  }

  late final _$isLoadingEditLegalContentAtom = Atom(
      name: 'LegalContentsControllerBase.isLoadingEditLegalContent',
      context: context);

  @override
  bool get isLoadingEditLegalContent {
    _$isLoadingEditLegalContentAtom.reportRead();
    return super.isLoadingEditLegalContent;
  }

  @override
  set isLoadingEditLegalContent(bool value) {
    _$isLoadingEditLegalContentAtom
        .reportWrite(value, super.isLoadingEditLegalContent, () {
      super.isLoadingEditLegalContent = value;
    });
  }

  late final _$findLegalContentAsyncAction = AsyncAction(
      'LegalContentsControllerBase.findLegalContent',
      context: context);

  @override
  Future<bool> findLegalContent() {
    return _$findLegalContentAsyncAction.run(() => super.findLegalContent());
  }

  late final _$editLegalContentAsyncAction = AsyncAction(
      'LegalContentsControllerBase.editLegalContent',
      context: context);

  @override
  Future<bool> editLegalContent() {
    return _$editLegalContentAsyncAction.run(() => super.editLegalContent());
  }

  late final _$LegalContentsControllerBaseActionController =
      ActionController(name: 'LegalContentsControllerBase', context: context);

  @override
  void setLegalContent(LegalContentModel data) {
    final _$actionInfo = _$LegalContentsControllerBaseActionController
        .startAction(name: 'LegalContentsControllerBase.setLegalContent');
    try {
      return super.setLegalContent(data);
    } finally {
      _$LegalContentsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFindLegalContentUrlParam(FindLegalContentUrlParam data) {
    final _$actionInfo =
        _$LegalContentsControllerBaseActionController.startAction(
            name: 'LegalContentsControllerBase.setFindLegalContentUrlParam');
    try {
      return super.setFindLegalContentUrlParam(data);
    } finally {
      _$LegalContentsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEditLegalContentBodyParam(EditLegalContentBodyParam data) {
    final _$actionInfo =
        _$LegalContentsControllerBaseActionController.startAction(
            name: 'LegalContentsControllerBase.setEditLegalContentBodyParam');
    try {
      return super.setEditLegalContentBodyParam(data);
    } finally {
      _$LegalContentsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEditLegalContentUrlParam(EditLegalContentUrlParam data) {
    final _$actionInfo =
        _$LegalContentsControllerBaseActionController.startAction(
            name: 'LegalContentsControllerBase.setEditLegalContentUrlParam');
    try {
      return super.setEditLegalContentUrlParam(data);
    } finally {
      _$LegalContentsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingFindLegalContent(bool isLoading) {
    final _$actionInfo =
        _$LegalContentsControllerBaseActionController.startAction(
            name: 'LegalContentsControllerBase.setIsLoadingFindLegalContent');
    try {
      return super.setIsLoadingFindLegalContent(isLoading);
    } finally {
      _$LegalContentsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingEditLegalContent(bool isLoading) {
    final _$actionInfo =
        _$LegalContentsControllerBaseActionController.startAction(
            name: 'LegalContentsControllerBase.setIsLoadingEditLegalContent');
    try {
      return super.setIsLoadingEditLegalContent(isLoading);
    } finally {
      _$LegalContentsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
legalContent: ${legalContent},
findLegalContentUrlParam: ${findLegalContentUrlParam},
editLegalContentBodyParam: ${editLegalContentBodyParam},
editLegalContentUrlParam: ${editLegalContentUrlParam},
isLoadingFindLegalContent: ${isLoadingFindLegalContent},
isLoadingEditLegalContent: ${isLoadingEditLegalContent}
    ''';
  }
}
