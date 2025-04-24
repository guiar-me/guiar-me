import 'package:go_router/go_router.dart';
import 'package:sdk_flutter/controllers/base_controller.dart';
import 'package:sdk_flutter/controllers/contracts/alert.dart';
import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/data/repositories/users/fcm_token_params.dart';
import 'package:sdk_flutter/data/repositories/users/sign_in_params.dart';
import 'package:sdk_flutter/data/repositories/users/sign_up_params.dart';
import 'package:sdk_flutter/data/repositories/users/user_repository.dart';
import 'package:sdk_flutter/domain/models/user_model.dart';
import 'package:mobx/mobx.dart';
import 'package:sdk_flutter/infra/notification_service.dart';

part 'auth_controller.g.dart';

class AuthController = AuthControllerBase with _$AuthController;

abstract class AuthControllerBase with Store, BaseController {
  final UserRepository userRepository;
  final AlertContract alert;
  final GoRouter router;

  AuthControllerBase(this.userRepository, this.alert, this.router);

  @observable
  SignInParams signInData = const SignInParams(email: '', password: '');

  @observable
  SignUpParams signUpData = const SignUpParams(
    name: '',
    email: '',
    password: '',
  );

  @observable
  UserModel? user;

  @observable
  bool isAuth = false;

  @observable
  bool isLoadingSignIn = false;

  @observable
  bool isLoadingSignUp = false;

  @observable
  bool isLoadingSignOut = false;

  @observable
  bool isLoadingMe = false;

  @observable
  bool isLoadingGetAuth = false;

  @action
  void setSignInData({String? password, String? email}) {
    signInData = signInData.copyWith(password: password, email: email);
  }

  @action
  void unsetSignInData() {
    signInData = const SignInParams(email: '', password: '');
  }

  @action
  void setSignUpData({String? name, String? email, String? password}) {
    signUpData = signUpData.copyWith(
      name: name,
      email: email,
      password: password,
    );
  }

  @action
  void unsetSignUpData() {
    signUpData = const SignUpParams(name: '', email: '', password: '');
  }

  @action
  void setUser(UserModel? data) {
    user = data;
  }

  @action
  void setIsAuth(bool auth) {
    isAuth = auth;
  }

  @action
  void setIsLoadingSignIn(bool loading) {
    isLoadingSignIn = loading;
  }

  @action
  void setIsLoadingSignUp(bool loading) {
    isLoadingSignUp = loading;
  }

  @action
  void setIsLoadingSignOut(bool loading) {
    isLoadingSignOut = loading;
  }

  @action
  void setIsLoadingMe(bool loading) {
    isLoadingMe = loading;
  }

  @action
  void setIsLoadingGetAuth(bool loading) {
    isLoadingGetAuth = loading;
  }

  @action
  Future<void> signIn() async {
    setIsLoadingSignIn(true);

    Either<UserModel> response = await userRepository.signIn(
      params: signInData,
    );

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingSignIn(false);
    }

    if (response.isRight) {
      unsetSignInData();

      setUser(response.right!);
      setIsLoadingSignIn(false);

      router.replace('/');
    }
  }

  @action
  Future<void> signUp() async {
    setIsLoadingSignUp(true);

    Either<UserModel> response = await userRepository.signUp(
      params: signUpData,
    );

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingSignUp(false);
    }

    if (response.isRight) {
      unsetSignUpData();

      setUser(response.right!);
      setIsLoadingSignUp(false);

      router.replace('/');
    }
  }

  @action
  Future<void> signOut() async {
    setIsLoadingSignOut(true);

    Either<bool> response = await userRepository.signOut();

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingSignOut(false);
    }

    if (response.isRight) {
      unsetSignInData();
      unsetSignUpData();

      setUser(null);
      setIsLoadingSignOut(false);
    }
  }

  @action
  Future<void> me({bool isShowError = true}) async {
    setIsLoadingMe(true);

    Either<UserModel> response = await userRepository.me();

    if (response.isLeft) {
      if (isShowError) {
        handleApiError(response.left!, alert, router);
      }

      setIsLoadingMe(false);
    }

    if (response.isRight) {
      String? fcmToken = await NotificationService.getToken();

      if (fcmToken != null) {
        await userRepository.fcmToken(
          params: FCMTokenParams(
            fcmToken: fcmToken,
            userId: response.right!.id,
          ),
        );
      }

      setUser(response.right!);
      setIsAuth(true);
      setIsLoadingMe(false);
    }
  }

  @action
  Future<void> getAuth() async {
    setIsLoadingGetAuth(true);

    Either<bool> hasAuthTokenResponse = await userRepository.hasAuthToken();

    if (hasAuthTokenResponse.isLeft) {
      setIsAuth(false);
      setIsLoadingGetAuth(false);
    }

    if (hasAuthTokenResponse.isRight) {
      if (!hasAuthTokenResponse.right!) {
        setIsAuth(false);
        setIsLoadingGetAuth(false);
      }

      if (hasAuthTokenResponse.right!) {
        await me(isShowError: false);

        setIsLoadingGetAuth(false);
      }
    }
  }
}
