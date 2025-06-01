import 'package:go_router/go_router.dart';
import 'package:mobx/mobx.dart';
import 'package:sdk_flutter/sdk_flutter.dart';

part 'auth_controller.g.dart';

class AuthController = AuthControllerBase with _$AuthController;

abstract class AuthControllerBase with Store, BaseController {
  final SecureStorageContract secureStorage;
  final UsersRepository userRepository;
  final AlertContract alert;
  final GoRouter router;

  AuthControllerBase(
    this.secureStorage,
    this.userRepository,
    this.alert,
    this.router,
  );

  @observable
  SignInUserBodyParam signInData = const SignInUserBodyParam(
    email: '',
    password: '',
  );

  @observable
  SignUpUserBodyParam signUpData = const SignUpUserBodyParam(
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
    signInData = const SignInUserBodyParam(email: '', password: '');
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
    signUpData = const SignUpUserBodyParam(name: '', email: '', password: '');
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

    Either<UserModel> response = await userRepository.signInUser(
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

    Either<UserModel> response = await userRepository.signUpUser(
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

    Either<bool> response = await secureStorage.unset(
      key: Constants.authorizationTokenKey,
    );

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

    Either<UserModel> response = await userRepository.meUser();

    if (response.isLeft) {
      if (isShowError) {
        handleApiError(response.left!, alert, router);
      }

      setIsAuth(false);
      setIsLoadingMe(false);
    }

    if (response.isRight) {
      String? fcmToken = await NotificationService.getToken();

      if (fcmToken != null) {
        await userRepository.addFcmToken(
          params: AddFcmTokenBodyParam(fcmToken: fcmToken),
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

    Either<String> hasAuthTokenResponse = await secureStorage.get(
      key: Constants.authorizationTokenKey,
    );

    if (hasAuthTokenResponse.isLeft) {
      setIsAuth(false);
      setIsLoadingGetAuth(false);
    }

    if (hasAuthTokenResponse.isRight) {
      if (hasAuthTokenResponse.right!.isEmpty) {
        setIsAuth(false);
        setIsLoadingGetAuth(false);
      }

      if (hasAuthTokenResponse.right!.isNotEmpty) {
        await me(isShowError: false);

        setIsLoadingGetAuth(false);
      }
    }
  }
}
