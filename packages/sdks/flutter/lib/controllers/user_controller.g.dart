// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserController on UserControllerBase, Store {
  late final _$editUserDataAtom =
      Atom(name: 'UserControllerBase.editUserData', context: context);

  @override
  EditUserParams get editUserData {
    _$editUserDataAtom.reportRead();
    return super.editUserData;
  }

  @override
  set editUserData(EditUserParams value) {
    _$editUserDataAtom.reportWrite(value, super.editUserData, () {
      super.editUserData = value;
    });
  }

  late final _$usersAtom =
      Atom(name: 'UserControllerBase.users', context: context);

  @override
  List<UserModel> get users {
    _$usersAtom.reportRead();
    return super.users;
  }

  @override
  set users(List<UserModel> value) {
    _$usersAtom.reportWrite(value, super.users, () {
      super.users = value;
    });
  }

  late final _$userAtom =
      Atom(name: 'UserControllerBase.user', context: context);

  @override
  UserModel? get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserModel? value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$isLoadingEditAtom =
      Atom(name: 'UserControllerBase.isLoadingEdit', context: context);

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

  late final _$isLoadingIndexAtom =
      Atom(name: 'UserControllerBase.isLoadingIndex', context: context);

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

  late final _$editAsyncAction =
      AsyncAction('UserControllerBase.edit', context: context);

  @override
  Future<void> edit(bool isSubscription) {
    return _$editAsyncAction.run(() => super.edit(isSubscription));
  }

  late final _$indexAsyncAction =
      AsyncAction('UserControllerBase.index', context: context);

  @override
  Future<void> index() {
    return _$indexAsyncAction.run(() => super.index());
  }

  late final _$UserControllerBaseActionController =
      ActionController(name: 'UserControllerBase', context: context);

  @override
  void setEditUserData(
      {int? id,
      String? name,
      String? email,
      String? phone,
      String? birth,
      int? addressId,
      String? zipCode,
      String? state,
      String? city,
      String? neighborhood,
      String? address,
      String? number,
      String? complement}) {
    final _$actionInfo = _$UserControllerBaseActionController.startAction(
        name: 'UserControllerBase.setEditUserData');
    try {
      return super.setEditUserData(
          id: id,
          name: name,
          email: email,
          phone: phone,
          birth: birth,
          addressId: addressId,
          zipCode: zipCode,
          state: state,
          city: city,
          neighborhood: neighborhood,
          address: address,
          number: number,
          complement: complement);
    } finally {
      _$UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unsetEditUserData() {
    final _$actionInfo = _$UserControllerBaseActionController.startAction(
        name: 'UserControllerBase.unsetEditUserData');
    try {
      return super.unsetEditUserData();
    } finally {
      _$UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUsers(List<UserModel> data) {
    final _$actionInfo = _$UserControllerBaseActionController.startAction(
        name: 'UserControllerBase.setUsers');
    try {
      return super.setUsers(data);
    } finally {
      _$UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUser(UserModel data) {
    final _$actionInfo = _$UserControllerBaseActionController.startAction(
        name: 'UserControllerBase.setUser');
    try {
      return super.setUser(data);
    } finally {
      _$UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingEdit(bool loading) {
    final _$actionInfo = _$UserControllerBaseActionController.startAction(
        name: 'UserControllerBase.setIsLoadingEdit');
    try {
      return super.setIsLoadingEdit(loading);
    } finally {
      _$UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingIndex(bool loading) {
    final _$actionInfo = _$UserControllerBaseActionController.startAction(
        name: 'UserControllerBase.setIsLoadingIndex');
    try {
      return super.setIsLoadingIndex(loading);
    } finally {
      _$UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
editUserData: ${editUserData},
users: ${users},
user: ${user},
isLoadingEdit: ${isLoadingEdit},
isLoadingIndex: ${isLoadingIndex}
    ''';
  }
}
