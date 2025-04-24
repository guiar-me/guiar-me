// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthController on AuthControllerBase, Store {
  late final _$signInDataAtom =
      Atom(name: 'AuthControllerBase.signInData', context: context);

  @override
  SignInParams get signInData {
    _$signInDataAtom.reportRead();
    return super.signInData;
  }

  @override
  set signInData(SignInParams value) {
    _$signInDataAtom.reportWrite(value, super.signInData, () {
      super.signInData = value;
    });
  }

  late final _$signUpDataAtom =
      Atom(name: 'AuthControllerBase.signUpData', context: context);

  @override
  SignUpParams get signUpData {
    _$signUpDataAtom.reportRead();
    return super.signUpData;
  }

  @override
  set signUpData(SignUpParams value) {
    _$signUpDataAtom.reportWrite(value, super.signUpData, () {
      super.signUpData = value;
    });
  }

  late final _$userAtom =
      Atom(name: 'AuthControllerBase.user', context: context);

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

  late final _$isAuthAtom =
      Atom(name: 'AuthControllerBase.isAuth', context: context);

  @override
  bool get isAuth {
    _$isAuthAtom.reportRead();
    return super.isAuth;
  }

  @override
  set isAuth(bool value) {
    _$isAuthAtom.reportWrite(value, super.isAuth, () {
      super.isAuth = value;
    });
  }

  late final _$isLoadingSignInAtom =
      Atom(name: 'AuthControllerBase.isLoadingSignIn', context: context);

  @override
  bool get isLoadingSignIn {
    _$isLoadingSignInAtom.reportRead();
    return super.isLoadingSignIn;
  }

  @override
  set isLoadingSignIn(bool value) {
    _$isLoadingSignInAtom.reportWrite(value, super.isLoadingSignIn, () {
      super.isLoadingSignIn = value;
    });
  }

  late final _$isLoadingSignUpAtom =
      Atom(name: 'AuthControllerBase.isLoadingSignUp', context: context);

  @override
  bool get isLoadingSignUp {
    _$isLoadingSignUpAtom.reportRead();
    return super.isLoadingSignUp;
  }

  @override
  set isLoadingSignUp(bool value) {
    _$isLoadingSignUpAtom.reportWrite(value, super.isLoadingSignUp, () {
      super.isLoadingSignUp = value;
    });
  }

  late final _$isLoadingSignOutAtom =
      Atom(name: 'AuthControllerBase.isLoadingSignOut', context: context);

  @override
  bool get isLoadingSignOut {
    _$isLoadingSignOutAtom.reportRead();
    return super.isLoadingSignOut;
  }

  @override
  set isLoadingSignOut(bool value) {
    _$isLoadingSignOutAtom.reportWrite(value, super.isLoadingSignOut, () {
      super.isLoadingSignOut = value;
    });
  }

  late final _$isLoadingMeAtom =
      Atom(name: 'AuthControllerBase.isLoadingMe', context: context);

  @override
  bool get isLoadingMe {
    _$isLoadingMeAtom.reportRead();
    return super.isLoadingMe;
  }

  @override
  set isLoadingMe(bool value) {
    _$isLoadingMeAtom.reportWrite(value, super.isLoadingMe, () {
      super.isLoadingMe = value;
    });
  }

  late final _$isLoadingGetAuthAtom =
      Atom(name: 'AuthControllerBase.isLoadingGetAuth', context: context);

  @override
  bool get isLoadingGetAuth {
    _$isLoadingGetAuthAtom.reportRead();
    return super.isLoadingGetAuth;
  }

  @override
  set isLoadingGetAuth(bool value) {
    _$isLoadingGetAuthAtom.reportWrite(value, super.isLoadingGetAuth, () {
      super.isLoadingGetAuth = value;
    });
  }

  late final _$signInAsyncAction =
      AsyncAction('AuthControllerBase.signIn', context: context);

  @override
  Future<void> signIn() {
    return _$signInAsyncAction.run(() => super.signIn());
  }

  late final _$signUpAsyncAction =
      AsyncAction('AuthControllerBase.signUp', context: context);

  @override
  Future<void> signUp() {
    return _$signUpAsyncAction.run(() => super.signUp());
  }

  late final _$signOutAsyncAction =
      AsyncAction('AuthControllerBase.signOut', context: context);

  @override
  Future<void> signOut() {
    return _$signOutAsyncAction.run(() => super.signOut());
  }

  late final _$meAsyncAction =
      AsyncAction('AuthControllerBase.me', context: context);

  @override
  Future<void> me({bool isShowError = true}) {
    return _$meAsyncAction.run(() => super.me(isShowError: isShowError));
  }

  late final _$getAuthAsyncAction =
      AsyncAction('AuthControllerBase.getAuth', context: context);

  @override
  Future<void> getAuth() {
    return _$getAuthAsyncAction.run(() => super.getAuth());
  }

  late final _$AuthControllerBaseActionController =
      ActionController(name: 'AuthControllerBase', context: context);

  @override
  void setSignInData({String? password, String? email}) {
    final _$actionInfo = _$AuthControllerBaseActionController.startAction(
        name: 'AuthControllerBase.setSignInData');
    try {
      return super.setSignInData(password: password, email: email);
    } finally {
      _$AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unsetSignInData() {
    final _$actionInfo = _$AuthControllerBaseActionController.startAction(
        name: 'AuthControllerBase.unsetSignInData');
    try {
      return super.unsetSignInData();
    } finally {
      _$AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSignUpData({String? name, String? email, String? password}) {
    final _$actionInfo = _$AuthControllerBaseActionController.startAction(
        name: 'AuthControllerBase.setSignUpData');
    try {
      return super.setSignUpData(name: name, email: email, password: password);
    } finally {
      _$AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unsetSignUpData() {
    final _$actionInfo = _$AuthControllerBaseActionController.startAction(
        name: 'AuthControllerBase.unsetSignUpData');
    try {
      return super.unsetSignUpData();
    } finally {
      _$AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUser(UserModel? data) {
    final _$actionInfo = _$AuthControllerBaseActionController.startAction(
        name: 'AuthControllerBase.setUser');
    try {
      return super.setUser(data);
    } finally {
      _$AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsAuth(bool auth) {
    final _$actionInfo = _$AuthControllerBaseActionController.startAction(
        name: 'AuthControllerBase.setIsAuth');
    try {
      return super.setIsAuth(auth);
    } finally {
      _$AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingSignIn(bool loading) {
    final _$actionInfo = _$AuthControllerBaseActionController.startAction(
        name: 'AuthControllerBase.setIsLoadingSignIn');
    try {
      return super.setIsLoadingSignIn(loading);
    } finally {
      _$AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingSignUp(bool loading) {
    final _$actionInfo = _$AuthControllerBaseActionController.startAction(
        name: 'AuthControllerBase.setIsLoadingSignUp');
    try {
      return super.setIsLoadingSignUp(loading);
    } finally {
      _$AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingSignOut(bool loading) {
    final _$actionInfo = _$AuthControllerBaseActionController.startAction(
        name: 'AuthControllerBase.setIsLoadingSignOut');
    try {
      return super.setIsLoadingSignOut(loading);
    } finally {
      _$AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingMe(bool loading) {
    final _$actionInfo = _$AuthControllerBaseActionController.startAction(
        name: 'AuthControllerBase.setIsLoadingMe');
    try {
      return super.setIsLoadingMe(loading);
    } finally {
      _$AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingGetAuth(bool loading) {
    final _$actionInfo = _$AuthControllerBaseActionController.startAction(
        name: 'AuthControllerBase.setIsLoadingGetAuth');
    try {
      return super.setIsLoadingGetAuth(loading);
    } finally {
      _$AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
signInData: ${signInData},
signUpData: ${signUpData},
user: ${user},
isAuth: ${isAuth},
isLoadingSignIn: ${isLoadingSignIn},
isLoadingSignUp: ${isLoadingSignUp},
isLoadingSignOut: ${isLoadingSignOut},
isLoadingMe: ${isLoadingMe},
isLoadingGetAuth: ${isLoadingGetAuth}
    ''';
  }
}
