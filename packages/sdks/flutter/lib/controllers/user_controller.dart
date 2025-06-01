import 'package:go_router/go_router.dart';
import 'package:mobx/mobx.dart';
import 'package:sdk_flutter/sdk_flutter.dart';

part 'user_controller.g.dart';

class UserController = UserControllerBase with _$UserController;

abstract class UserControllerBase with Store, BaseController {
  final UsersRepository userRepository;
  final AlertContract alert;
  final GoRouter router;

  UserControllerBase(this.userRepository, this.alert, this.router);

  @observable
  EditUserBodyParam editUserData = const EditUserBodyParam(
    name: '',
    email: '',
    phone: '',
    birth: '',
    addressId: null,
    addressZipCode: '',
    addressState: '',
    addressCity: '',
    addressNeighborhood: '',
    addressAddress: '',
    addressNumber: null,
    addressComplement: null,
  );

  @observable
  EditUserUrlParam editUserUrlParams = const EditUserUrlParam(
    userId: 0,
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
    String? addressZipCode,
    String? addressState,
    String? addressCity,
    String? addressNeighborhood,
    String? addressAddress,
    String? addressNumber,
    String? addressComplement,
  }) {
    editUserData = editUserData.copyWith(
      name: name,
      email: email,
      phone: phone,
      birth: birth,
      addressId: addressId,
      addressZipCode: addressZipCode,
      addressState: addressState,
      addressCity: addressCity,
      addressNeighborhood: addressNeighborhood,
      addressAddress: addressAddress,
      addressNumber: addressNumber,
      addressComplement: addressComplement,
    );
  }

  @action
  void unsetEditUserData() {
    editUserData = const EditUserBodyParam(
      name: '',
      email: '',
      phone: '',
      birth: '',
      addressId: null,
      addressZipCode: '',
      addressState: '',
      addressCity: '',
      addressNeighborhood: '',
      addressAddress: '',
      addressNumber: null,
      addressComplement: null,
    );
  }

  @action
  void setEditUserUrlParams({
    int? userId,
  }) {
    editUserUrlParams = editUserUrlParams.copyWith(
      userId: userId,
    );
  }

  @action
  void setUsers(List<UserModel> data) {
    currentPage == 1 ? users = data : users = [...users, ...data];
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
    currentPage == 1 ? isLoadingIndex = loading : setIsLoadingNextPage(loading);
  }

  @action
  Future<void> edit() async {
    setIsLoadingEdit(true);

    Either<bool> response = await userRepository.editUser(
      params: editUserData,
      urlParams: editUserUrlParams,
    );

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingEdit(false);
    }

    if (response.isRight) {
      unsetEditUserData();

      setIsLoadingEdit(false);

      router.push('/users');
    }
  }

  @action
  Future<void> index() async {
    setIsLoadingIndex(true);

    Either<PaginatedData<UserModel>> response = await userRepository.listUsers();

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingIndex(false);
    }

    if (response.isRight) {
      setUsers(response.right!.data);
      setLastPage(response.right!.meta.lastPage);

      setIsLoadingIndex(false);
    }
  }

  bool allowInitialIndex() {
    bool allowInitialIndex = currentPage == 1 && users.isEmpty;

    return allowInitialIndex;
  }
}
