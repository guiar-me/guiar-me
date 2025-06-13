// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UsersController on UsersControllerBase, Store {
  late final _$currentPageAtom =
      Atom(name: 'UsersControllerBase.currentPage', context: context);

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
      Atom(name: 'UsersControllerBase.lastPage', context: context);

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

  late final _$listUserAtom =
      Atom(name: 'UsersControllerBase.listUser', context: context);

  @override
  List<UserModel> get listUser {
    _$listUserAtom.reportRead();
    return super.listUser;
  }

  @override
  set listUser(List<UserModel> value) {
    _$listUserAtom.reportWrite(value, super.listUser, () {
      super.listUser = value;
    });
  }

  late final _$userAtom =
      Atom(name: 'UsersControllerBase.user', context: context);

  @override
  UserModel get user {
    _$userAtom.reportRead();
    return super.user;
  }

  bool _userIsInitialized = false;

  @override
  set user(UserModel value) {
    _$userAtom.reportWrite(value, _userIsInitialized ? super.user : null, () {
      super.user = value;
      _userIsInitialized = true;
    });
  }

  late final _$fcmTokenAtom =
      Atom(name: 'UsersControllerBase.fcmToken', context: context);

  @override
  FcmTokenModel get fcmToken {
    _$fcmTokenAtom.reportRead();
    return super.fcmToken;
  }

  bool _fcmTokenIsInitialized = false;

  @override
  set fcmToken(FcmTokenModel value) {
    _$fcmTokenAtom
        .reportWrite(value, _fcmTokenIsInitialized ? super.fcmToken : null, () {
      super.fcmToken = value;
      _fcmTokenIsInitialized = true;
    });
  }

  late final _$addFcmTokenBodyParamAtom =
      Atom(name: 'UsersControllerBase.addFcmTokenBodyParam', context: context);

  @override
  AddFcmTokenBodyParam get addFcmTokenBodyParam {
    _$addFcmTokenBodyParamAtom.reportRead();
    return super.addFcmTokenBodyParam;
  }

  bool _addFcmTokenBodyParamIsInitialized = false;

  @override
  set addFcmTokenBodyParam(AddFcmTokenBodyParam value) {
    _$addFcmTokenBodyParamAtom.reportWrite(value,
        _addFcmTokenBodyParamIsInitialized ? super.addFcmTokenBodyParam : null,
        () {
      super.addFcmTokenBodyParam = value;
      _addFcmTokenBodyParamIsInitialized = true;
    });
  }

  late final _$editUserBodyParamAtom =
      Atom(name: 'UsersControllerBase.editUserBodyParam', context: context);

  @override
  EditUserBodyParam get editUserBodyParam {
    _$editUserBodyParamAtom.reportRead();
    return super.editUserBodyParam;
  }

  bool _editUserBodyParamIsInitialized = false;

  @override
  set editUserBodyParam(EditUserBodyParam value) {
    _$editUserBodyParamAtom.reportWrite(
        value, _editUserBodyParamIsInitialized ? super.editUserBodyParam : null,
        () {
      super.editUserBodyParam = value;
      _editUserBodyParamIsInitialized = true;
    });
  }

  late final _$editUserUrlParamAtom =
      Atom(name: 'UsersControllerBase.editUserUrlParam', context: context);

  @override
  EditUserUrlParam get editUserUrlParam {
    _$editUserUrlParamAtom.reportRead();
    return super.editUserUrlParam;
  }

  bool _editUserUrlParamIsInitialized = false;

  @override
  set editUserUrlParam(EditUserUrlParam value) {
    _$editUserUrlParamAtom.reportWrite(
        value, _editUserUrlParamIsInitialized ? super.editUserUrlParam : null,
        () {
      super.editUserUrlParam = value;
      _editUserUrlParamIsInitialized = true;
    });
  }

  late final _$signInUserBodyParamAtom =
      Atom(name: 'UsersControllerBase.signInUserBodyParam', context: context);

  @override
  SignInUserBodyParam get signInUserBodyParam {
    _$signInUserBodyParamAtom.reportRead();
    return super.signInUserBodyParam;
  }

  bool _signInUserBodyParamIsInitialized = false;

  @override
  set signInUserBodyParam(SignInUserBodyParam value) {
    _$signInUserBodyParamAtom.reportWrite(value,
        _signInUserBodyParamIsInitialized ? super.signInUserBodyParam : null,
        () {
      super.signInUserBodyParam = value;
      _signInUserBodyParamIsInitialized = true;
    });
  }

  late final _$signUpUserBodyParamAtom =
      Atom(name: 'UsersControllerBase.signUpUserBodyParam', context: context);

  @override
  SignUpUserBodyParam get signUpUserBodyParam {
    _$signUpUserBodyParamAtom.reportRead();
    return super.signUpUserBodyParam;
  }

  bool _signUpUserBodyParamIsInitialized = false;

  @override
  set signUpUserBodyParam(SignUpUserBodyParam value) {
    _$signUpUserBodyParamAtom.reportWrite(value,
        _signUpUserBodyParamIsInitialized ? super.signUpUserBodyParam : null,
        () {
      super.signUpUserBodyParam = value;
      _signUpUserBodyParamIsInitialized = true;
    });
  }

  late final _$isLoadingNextPageAtom =
      Atom(name: 'UsersControllerBase.isLoadingNextPage', context: context);

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

  late final _$isLoadingListUsersAtom =
      Atom(name: 'UsersControllerBase.isLoadingListUsers', context: context);

  @override
  bool get isLoadingListUsers {
    _$isLoadingListUsersAtom.reportRead();
    return super.isLoadingListUsers;
  }

  @override
  set isLoadingListUsers(bool value) {
    _$isLoadingListUsersAtom.reportWrite(value, super.isLoadingListUsers, () {
      super.isLoadingListUsers = value;
    });
  }

  late final _$isLoadingMeUserAtom =
      Atom(name: 'UsersControllerBase.isLoadingMeUser', context: context);

  @override
  bool get isLoadingMeUser {
    _$isLoadingMeUserAtom.reportRead();
    return super.isLoadingMeUser;
  }

  @override
  set isLoadingMeUser(bool value) {
    _$isLoadingMeUserAtom.reportWrite(value, super.isLoadingMeUser, () {
      super.isLoadingMeUser = value;
    });
  }

  late final _$isLoadingAddFcmTokenAtom =
      Atom(name: 'UsersControllerBase.isLoadingAddFcmToken', context: context);

  @override
  bool get isLoadingAddFcmToken {
    _$isLoadingAddFcmTokenAtom.reportRead();
    return super.isLoadingAddFcmToken;
  }

  @override
  set isLoadingAddFcmToken(bool value) {
    _$isLoadingAddFcmTokenAtom.reportWrite(value, super.isLoadingAddFcmToken,
        () {
      super.isLoadingAddFcmToken = value;
    });
  }

  late final _$isLoadingEditUserAtom =
      Atom(name: 'UsersControllerBase.isLoadingEditUser', context: context);

  @override
  bool get isLoadingEditUser {
    _$isLoadingEditUserAtom.reportRead();
    return super.isLoadingEditUser;
  }

  @override
  set isLoadingEditUser(bool value) {
    _$isLoadingEditUserAtom.reportWrite(value, super.isLoadingEditUser, () {
      super.isLoadingEditUser = value;
    });
  }

  late final _$isLoadingSignInUserAtom =
      Atom(name: 'UsersControllerBase.isLoadingSignInUser', context: context);

  @override
  bool get isLoadingSignInUser {
    _$isLoadingSignInUserAtom.reportRead();
    return super.isLoadingSignInUser;
  }

  @override
  set isLoadingSignInUser(bool value) {
    _$isLoadingSignInUserAtom.reportWrite(value, super.isLoadingSignInUser, () {
      super.isLoadingSignInUser = value;
    });
  }

  late final _$isLoadingSignUpUserAtom =
      Atom(name: 'UsersControllerBase.isLoadingSignUpUser', context: context);

  @override
  bool get isLoadingSignUpUser {
    _$isLoadingSignUpUserAtom.reportRead();
    return super.isLoadingSignUpUser;
  }

  @override
  set isLoadingSignUpUser(bool value) {
    _$isLoadingSignUpUserAtom.reportWrite(value, super.isLoadingSignUpUser, () {
      super.isLoadingSignUpUser = value;
    });
  }

  late final _$listUsersAsyncAction =
      AsyncAction('UsersControllerBase.listUsers', context: context);

  @override
  Future<void> listUsers() {
    return _$listUsersAsyncAction.run(() => super.listUsers());
  }

  late final _$meUserAsyncAction =
      AsyncAction('UsersControllerBase.meUser', context: context);

  @override
  Future<void> meUser() {
    return _$meUserAsyncAction.run(() => super.meUser());
  }

  late final _$addFcmTokenAsyncAction =
      AsyncAction('UsersControllerBase.addFcmToken', context: context);

  @override
  Future<void> addFcmToken() {
    return _$addFcmTokenAsyncAction.run(() => super.addFcmToken());
  }

  late final _$editUserAsyncAction =
      AsyncAction('UsersControllerBase.editUser', context: context);

  @override
  Future<void> editUser() {
    return _$editUserAsyncAction.run(() => super.editUser());
  }

  late final _$signInUserAsyncAction =
      AsyncAction('UsersControllerBase.signInUser', context: context);

  @override
  Future<void> signInUser() {
    return _$signInUserAsyncAction.run(() => super.signInUser());
  }

  late final _$signUpUserAsyncAction =
      AsyncAction('UsersControllerBase.signUpUser', context: context);

  @override
  Future<void> signUpUser() {
    return _$signUpUserAsyncAction.run(() => super.signUpUser());
  }

  late final _$UsersControllerBaseActionController =
      ActionController(name: 'UsersControllerBase', context: context);

  @override
  void setCurrentPage(int data) {
    final _$actionInfo = _$UsersControllerBaseActionController.startAction(
        name: 'UsersControllerBase.setCurrentPage');
    try {
      return super.setCurrentPage(data);
    } finally {
      _$UsersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLastPage(int data) {
    final _$actionInfo = _$UsersControllerBaseActionController.startAction(
        name: 'UsersControllerBase.setLastPage');
    try {
      return super.setLastPage(data);
    } finally {
      _$UsersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setListUser(List<UserModel> data) {
    final _$actionInfo = _$UsersControllerBaseActionController.startAction(
        name: 'UsersControllerBase.setListUser');
    try {
      return super.setListUser(data);
    } finally {
      _$UsersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUser(UserModel data) {
    final _$actionInfo = _$UsersControllerBaseActionController.startAction(
        name: 'UsersControllerBase.setUser');
    try {
      return super.setUser(data);
    } finally {
      _$UsersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFcmToken(FcmTokenModel data) {
    final _$actionInfo = _$UsersControllerBaseActionController.startAction(
        name: 'UsersControllerBase.setFcmToken');
    try {
      return super.setFcmToken(data);
    } finally {
      _$UsersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAddFcmTokenBodyParam(AddFcmTokenBodyParam data) {
    final _$actionInfo = _$UsersControllerBaseActionController.startAction(
        name: 'UsersControllerBase.setAddFcmTokenBodyParam');
    try {
      return super.setAddFcmTokenBodyParam(data);
    } finally {
      _$UsersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEditUserBodyParam(EditUserBodyParam data) {
    final _$actionInfo = _$UsersControllerBaseActionController.startAction(
        name: 'UsersControllerBase.setEditUserBodyParam');
    try {
      return super.setEditUserBodyParam(data);
    } finally {
      _$UsersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEditUserUrlParam(EditUserUrlParam data) {
    final _$actionInfo = _$UsersControllerBaseActionController.startAction(
        name: 'UsersControllerBase.setEditUserUrlParam');
    try {
      return super.setEditUserUrlParam(data);
    } finally {
      _$UsersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSignInUserBodyParam(SignInUserBodyParam data) {
    final _$actionInfo = _$UsersControllerBaseActionController.startAction(
        name: 'UsersControllerBase.setSignInUserBodyParam');
    try {
      return super.setSignInUserBodyParam(data);
    } finally {
      _$UsersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSignUpUserBodyParam(SignUpUserBodyParam data) {
    final _$actionInfo = _$UsersControllerBaseActionController.startAction(
        name: 'UsersControllerBase.setSignUpUserBodyParam');
    try {
      return super.setSignUpUserBodyParam(data);
    } finally {
      _$UsersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingNextPage(bool isLoading) {
    final _$actionInfo = _$UsersControllerBaseActionController.startAction(
        name: 'UsersControllerBase.setIsLoadingNextPage');
    try {
      return super.setIsLoadingNextPage(isLoading);
    } finally {
      _$UsersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingListUsers(bool isLoading) {
    final _$actionInfo = _$UsersControllerBaseActionController.startAction(
        name: 'UsersControllerBase.setIsLoadingListUsers');
    try {
      return super.setIsLoadingListUsers(isLoading);
    } finally {
      _$UsersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingMeUser(bool isLoading) {
    final _$actionInfo = _$UsersControllerBaseActionController.startAction(
        name: 'UsersControllerBase.setIsLoadingMeUser');
    try {
      return super.setIsLoadingMeUser(isLoading);
    } finally {
      _$UsersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingAddFcmToken(bool isLoading) {
    final _$actionInfo = _$UsersControllerBaseActionController.startAction(
        name: 'UsersControllerBase.setIsLoadingAddFcmToken');
    try {
      return super.setIsLoadingAddFcmToken(isLoading);
    } finally {
      _$UsersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingEditUser(bool isLoading) {
    final _$actionInfo = _$UsersControllerBaseActionController.startAction(
        name: 'UsersControllerBase.setIsLoadingEditUser');
    try {
      return super.setIsLoadingEditUser(isLoading);
    } finally {
      _$UsersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingSignInUser(bool isLoading) {
    final _$actionInfo = _$UsersControllerBaseActionController.startAction(
        name: 'UsersControllerBase.setIsLoadingSignInUser');
    try {
      return super.setIsLoadingSignInUser(isLoading);
    } finally {
      _$UsersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingSignUpUser(bool isLoading) {
    final _$actionInfo = _$UsersControllerBaseActionController.startAction(
        name: 'UsersControllerBase.setIsLoadingSignUpUser');
    try {
      return super.setIsLoadingSignUpUser(isLoading);
    } finally {
      _$UsersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
lastPage: ${lastPage},
listUser: ${listUser},
user: ${user},
fcmToken: ${fcmToken},
addFcmTokenBodyParam: ${addFcmTokenBodyParam},
editUserBodyParam: ${editUserBodyParam},
editUserUrlParam: ${editUserUrlParam},
signInUserBodyParam: ${signInUserBodyParam},
signUpUserBodyParam: ${signUpUserBodyParam},
isLoadingNextPage: ${isLoadingNextPage},
isLoadingListUsers: ${isLoadingListUsers},
isLoadingMeUser: ${isLoadingMeUser},
isLoadingAddFcmToken: ${isLoadingAddFcmToken},
isLoadingEditUser: ${isLoadingEditUser},
isLoadingSignInUser: ${isLoadingSignInUser},
isLoadingSignUpUser: ${isLoadingSignUpUser}
    ''';
  }
}
