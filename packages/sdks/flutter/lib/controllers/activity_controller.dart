import 'dart:typed_data';

import 'package:sdk_flutter/controllers/base_controller.dart';
import 'package:sdk_flutter/controllers/contracts/alert.dart';
import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/core/types/paginated_data.dart';
import 'package:sdk_flutter/data/repositories/activities/activity_repository.dart';
import 'package:sdk_flutter/data/repositories/activities/add_activity_params.dart';
import 'package:sdk_flutter/data/repositories/activities/edit_activity_params.dart';
import 'package:sdk_flutter/domain/models/activity_model.dart';
import 'package:mobx/mobx.dart';
import 'package:go_router/go_router.dart';

part 'activity_controller.g.dart';

class ActivityController = ActivityControllerBase with _$ActivityController;

abstract class ActivityControllerBase with Store, BaseController {
  final ActivityRepository activityRepository;
  final AlertContract alert;
  final GoRouter router;

  ActivityControllerBase(this.activityRepository, this.alert, this.router);

  @observable
  AddActivityParams addActivityData = const AddActivityParams(
    name: '',
    description: '',
    category: '',
    isVerified: false,
    state: '',
    city: '',
    neighborhood: '',
    address: '',
    number: null,
    complement: null,
    fileName: null,
    fileBytes: null,
  );

  @observable
  EditActivityParams editActivityData = const EditActivityParams(
    id: 0,
    name: '',
    description: '',
    category: '',
    isVerified: false,
    addressId: 0,
    state: '',
    city: '',
    neighborhood: '',
    address: '',
    number: null,
    complement: null,
    fileName: null,
    fileBytes: null,
  );

  @observable
  String? fileName;

  @observable
  Uint8List? fileBytes;

  @observable
  List<ActivityModel> activities = [];

  @observable
  ActivityModel? activity;

  @observable
  bool isLoadingIndex = false;

  @observable
  bool isLoadingAdd = false;

  @observable
  bool isLoadingEdit = false;

  @observable
  bool isLoadingGet = false;

  @observable
  bool isLoadingDelete = false;

  @action
  void setAddActivityData({
    String? name,
    String? description,
    String? category,
    bool? isVerified,
    String? state,
    String? city,
    String? neighborhood,
    String? address,
    String? number,
    String? complement,
  }) {
    addActivityData = addActivityData.copyWith(
      name: name,
      description: description,
      category: category,
      isVerified: isVerified,
      state: state,
      city: city,
      neighborhood: neighborhood,
      address: address,
      number: number,
      complement: complement,
    );
  }

  @action
  void unsetAddActivityData() {
    addActivityData = const AddActivityParams(
      name: '',
      description: '',
      category: '',
      isVerified: false,
      state: '',
      city: '',
      neighborhood: '',
      address: '',
      number: null,
      complement: null,
      fileName: null,
      fileBytes: null,
    );
  }

  @action
  void setEditActivityData({
    int? id,
    String? name,
    String? description,
    String? category,
    bool? isVerified,
    int? addressId,
    String? state,
    String? city,
    String? neighborhood,
    String? address,
    String? number,
    String? complement,
  }) {
    editActivityData = editActivityData.copyWith(
      id: id,
      name: name,
      description: description,
      category: category,
      isVerified: isVerified,
      addressId: addressId,
      state: state,
      city: city,
      neighborhood: neighborhood,
      address: address,
      number: number,
      complement: complement,
    );
  }

  @action
  void unsetEditActivityData() {
    editActivityData = const EditActivityParams(
      id: 0,
      name: '',
      description: '',
      category: '',
      isVerified: false,
      addressId: 0,
      state: '',
      city: '',
      neighborhood: '',
      address: '',
      number: null,
      complement: null,
      fileName: null,
      fileBytes: null,
    );
  }

  @action
  void setFileName(String data) {
    fileName = data;
  }

  @action
  void setFileBytes(Uint8List data) {
    fileBytes = data;
  }

  @action
  void setActivities(List<ActivityModel> data) {
    activities.isEmpty
        ? activities = data
        : activities = [...activities, ...data];
  }

  @action
  void setActivity(ActivityModel data) {
    activity = data;
  }

  @action
  void unsetActivity() {
    activity = null;
  }

  @action
  void setIsLoadingIndex(bool loading) {
    currentPage == 1 ? isLoadingIndex = loading : setIsLoadingNextPage(loading);
  }

  @action
  void setIsLoadingAdd(bool loading) {
    isLoadingAdd = loading;
  }

  @action
  void setIsLoadingEdit(bool loading) {
    isLoadingEdit = loading;
  }

  @action
  void setIsLoadingGet(bool loading) {
    isLoadingGet = loading;
  }

  @action
  void setIsLoadingDelete(bool loading) {
    isLoadingDelete = loading;
  }

  @action
  Future<void> index() async {
    setIsLoadingIndex(true);

    Either<PaginatedData<ActivityModel>> response = await activityRepository
        .index(page: currentPage);

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingIndex(false);
    }

    if (response.isRight) {
      setActivities(response.right!.data);
      setLastPage(response.right!.meta.lastPage);

      setIsLoadingIndex(false);
    }
  }

  @action
  Future<void> add() async {
    setIsLoadingAdd(true);

    Either<ActivityModel> response = await activityRepository.add(
      params: addActivityData.copyWith(
        fileBytes: fileBytes,
        fileName: fileName,
      ),
    );

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingAdd(false);
    }

    if (response.isRight) {
      unsetAddActivityData();

      setIsLoadingAdd(false);

      router.push('/activities');
    }
  }

  @action
  Future<void> edit() async {
    setIsLoadingEdit(true);

    Either<bool> response = await activityRepository.edit(
      params: editActivityData.copyWith(
        fileBytes: fileBytes,
        fileName: fileName,
      ),
    );

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingEdit(false);
    }

    if (response.isRight) {
      unsetEditActivityData();
      unsetActivity();

      setIsLoadingEdit(false);

      router.push('/activities');
    }
  }

  @action
  Future<void> get(String id) async {
    setIsLoadingGet(true);

    Either<ActivityModel> response = await activityRepository.get(id: id);

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingGet(false);
    }

    if (response.isRight) {
      setActivity(response.right!);

      setIsLoadingGet(false);
    }
  }

  @action
  Future<void> delete(String id) async {
    setIsLoadingDelete(true);

    Either<bool> response = await activityRepository.delete(id: id);

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingDelete(false);
    }

    if (response.isRight) {
      setIsLoadingDelete(false);
    }
  }

  bool allowInitialIndex() {
    bool allowInitialIndex = currentPage == 1 && activities.isEmpty;

    return allowInitialIndex;
  }
}
