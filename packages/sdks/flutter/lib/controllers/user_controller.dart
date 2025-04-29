import 'package:sdk_flutter/controllers/base_controller.dart';
import 'package:sdk_flutter/controllers/contracts/alert.dart';
import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/data/repositories/users/edit_user_params.dart';
import 'package:sdk_flutter/data/repositories/users/user_repository.dart';
import 'package:go_router/go_router.dart';
import 'package:mobx/mobx.dart';
import 'package:sdk_flutter/sdk_flutter.dart';

part 'user_controller.g.dart';

class UserController = UserControllerBase with _$UserController;

abstract class UserControllerBase with Store, BaseController {
  final UserRepository userRepository;
  final AlertContract alert;
  final GoRouter router;

  UserControllerBase(this.userRepository, this.alert, this.router);

  @observable
  EditUserParams editUserData = const EditUserParams(
    id: 0,
    name: '',
    email: '',
    phone: '',
    birth: '',
    addressId: null,
    zipCode: '',
    state: '',
    city: '',
    neighborhood: '',
    address: '',
    number: null,
    complement: null,
  );

  @observable
  List<UserModel> users = [];

  @observable
  UserModel? user;

  @observable
  bool isLoadingEdit = false;

  @observable
  bool isLoadingIndex = false;

  @action
  void setEditUserData({
    int? id,
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
    String? complement,
  }) {
    editUserData = editUserData.copyWith(
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
      complement: complement,
    );
  }

  @action
  void unsetEditUserData() {
    editUserData = const EditUserParams(
      id: 0,
      name: '',
      email: '',
      phone: '',
      birth: '',
      addressId: null,
      zipCode: '',
      state: '',
      city: '',
      neighborhood: '',
      address: '',
      number: null,
      complement: null,
    );
  }

  @action
  void setUsers(List<UserModel> data) {
    users = data;
  }

  @action
  void setUser(UserModel data) {
    user = data;
  }

  @action
  void setIsLoadingEdit(bool loading) {
    isLoadingEdit = loading;
  }

  @action
  void setIsLoadingIndex(bool loading) {
    isLoadingIndex = loading;
  }

  @action
  Future<void> edit(bool isSubscription) async {
    setIsLoadingEdit(true);

    Either<bool> response = await userRepository.edit(params: editUserData);

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingEdit(false);
    }

    if (response.isRight) {
      unsetEditUserData();

      setIsLoadingEdit(false);

      router.push(!isSubscription ? '/' : '/payment-review');
    }
  }

  @action
  Future<void> index() async {
    setIsLoadingIndex(true);

    Either<List<UserModel>> response = await userRepository.index();

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingIndex(false);
    }

    if (response.isRight) {
      setUsers(response.right!);

      setIsLoadingIndex(false);
    }
  }
}
