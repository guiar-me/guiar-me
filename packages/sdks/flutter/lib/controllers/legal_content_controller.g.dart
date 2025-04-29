// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legal_content_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LegalContentController on LegalContentControllerBase, Store {
  late final _$editLegalContentDataAtom = Atom(
      name: 'LegalContentControllerBase.editLegalContentData',
      context: context);

  @override
  EditLegalContentParams get editLegalContentData {
    _$editLegalContentDataAtom.reportRead();
    return super.editLegalContentData;
  }

  @override
  set editLegalContentData(EditLegalContentParams value) {
    _$editLegalContentDataAtom.reportWrite(value, super.editLegalContentData,
        () {
      super.editLegalContentData = value;
    });
  }

  late final _$legalContentAtom =
      Atom(name: 'LegalContentControllerBase.legalContent', context: context);

  @override
  LegalContentModel? get legalContent {
    _$legalContentAtom.reportRead();
    return super.legalContent;
  }

  @override
  set legalContent(LegalContentModel? value) {
    _$legalContentAtom.reportWrite(value, super.legalContent, () {
      super.legalContent = value;
    });
  }

  late final _$isLoadingEditAtom =
      Atom(name: 'LegalContentControllerBase.isLoadingEdit', context: context);

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
      Atom(name: 'LegalContentControllerBase.isLoadingGet', context: context);

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

  late final _$getAsyncAction =
      AsyncAction('LegalContentControllerBase.get', context: context);

  @override
  Future<void> get(String type) {
    return _$getAsyncAction.run(() => super.get(type));
  }

  late final _$editAsyncAction =
      AsyncAction('LegalContentControllerBase.edit', context: context);

  @override
  Future<void> edit(String successMessage) {
    return _$editAsyncAction.run(() => super.edit(successMessage));
  }

  late final _$LegalContentControllerBaseActionController =
      ActionController(name: 'LegalContentControllerBase', context: context);

  @override
  void setEditLegalContentData(
      {int? id, String? type, String? description, String? descriptionHtml}) {
    final _$actionInfo =
        _$LegalContentControllerBaseActionController.startAction(
            name: 'LegalContentControllerBase.setEditLegalContentData');
    try {
      return super.setEditLegalContentData(
          id: id,
          type: type,
          description: description,
          descriptionHtml: descriptionHtml);
    } finally {
      _$LegalContentControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unsetEditLegalContentData() {
    final _$actionInfo =
        _$LegalContentControllerBaseActionController.startAction(
            name: 'LegalContentControllerBase.unsetEditLegalContentData');
    try {
      return super.unsetEditLegalContentData();
    } finally {
      _$LegalContentControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLegalContent(LegalContentModel legalContent) {
    final _$actionInfo = _$LegalContentControllerBaseActionController
        .startAction(name: 'LegalContentControllerBase.setLegalContent');
    try {
      return super.setLegalContent(legalContent);
    } finally {
      _$LegalContentControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingGet(bool loading) {
    final _$actionInfo = _$LegalContentControllerBaseActionController
        .startAction(name: 'LegalContentControllerBase.setIsLoadingGet');
    try {
      return super.setIsLoadingGet(loading);
    } finally {
      _$LegalContentControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingEdit(bool loading) {
    final _$actionInfo = _$LegalContentControllerBaseActionController
        .startAction(name: 'LegalContentControllerBase.setIsLoadingEdit');
    try {
      return super.setIsLoadingEdit(loading);
    } finally {
      _$LegalContentControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
editLegalContentData: ${editLegalContentData},
legalContent: ${legalContent},
isLoadingEdit: ${isLoadingEdit},
isLoadingGet: ${isLoadingGet}
    ''';
  }
}
