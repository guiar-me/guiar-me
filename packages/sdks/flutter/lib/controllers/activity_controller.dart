import 'dart:typed_data';

import 'package:mobx/mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:sdk_flutter/sdk_flutter.dart';

part 'activity_controller.g.dart';

class ActivityController = ActivityControllerBase with _$ActivityController;

abstract class ActivityControllerBase with Store, BaseController {
  final ActivitiesRepository activitiesRepository;
  final AlertContract alert;
  final GoRouter router;

  ActivityControllerBase(this.activitiesRepository, this.alert, this.router);

  @observable
  AddActivityBodyParam addActivityData = const AddActivityBodyParam(
    name: '',
    description: '',
    category: '',
    isVerified: false,
    addressState: '',
    addressCity: '',
    addressNeighborhood: '',
    addressAddress: '',
    addressNumber: null,
    addressComplement: null,
    imageName: null,
    imageBytes: null,
  );

  @observable
  EditActivityBodyParam editActivityData = const EditActivityBodyParam(
    name: '',
    description: '',
    category: '',
    isVerified: false,
    addressId: 0,
    addressState: '',
    addressCity: '',
    addressNeighborhood: '',
    addressAddress: '',
    addressNumber: null,
    addressComplement: null,
    imageName: null,
    imageBytes: null,
  );

  @observable
  EditActivityUrlParam editActivityUrlParams = const EditActivityUrlParam(
    activityId: 0,
  );

  @observable
  FindActivityUrlParam findActivityUrlParams = const FindActivityUrlParam(
    activityId: 0,
  );

  @observable
  RemoveActivityUrlParam removeActivityUrlParams = const RemoveActivityUrlParam(
    activityId: 0,
  );

  @observable
  ListActivitiesQueryParam listActivitiesQueryParams = const ListActivitiesQueryParam(
    page: 1,
    category: '',
    city: '',
  );

  @observable
  String? imageName;

  @observable
  Uint8List? imageBytes;

  @observable
  List<ActivityModel> activities = [];

  @observable
  ActivityModel? activity;

  @observable
  String? category;

  @observable
  String? city;

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
      addressState: state,
      addressCity: city,
      addressNeighborhood: neighborhood,
      addressAddress: address,
      addressNumber: number,
      addressComplement: complement,
    );
  }

  @action
  void unsetAddActivityData() {
    addActivityData = const AddActivityBodyParam(
      name: '',
      description: '',
      category: '',
      isVerified: false,
      addressState: '',
      addressCity: '',
      addressNeighborhood: '',
      addressAddress: '',
      addressNumber: null,
      addressComplement: null,
      imageName: null,
      imageBytes: null,
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
    String? addressState,
    String? addressCity,
    String? addressNeighborhood,
    String? addressAddress,
    String? addressNumber,
    String? addressComplement,
  }) {
    editActivityData = editActivityData.copyWith(
      name: name,
      description: description,
      category: category,
      isVerified: isVerified,
      addressId: addressId,
      addressState: addressState,
      addressCity: addressCity,
      addressNeighborhood: addressNeighborhood,
      addressAddress: addressAddress,
      addressNumber: addressNumber,
      addressComplement: addressComplement,
    );
  }

  @action
  void unsetEditActivityData() {
    editActivityData = const EditActivityBodyParam(
      name: '',
      description: '',
      category: '',
      isVerified: false,
      addressId: 0,
      addressState: '',
      addressCity: '',
      addressNeighborhood: '',
      addressAddress: '',
      addressNumber: null,
      addressComplement: null,
      imageName: null,
      imageBytes: null,
    );
  }

  @action
  void setEditActivityUrlParams({
    int? activityId,
  }) {
    editActivityUrlParams = editActivityUrlParams.copyWith(activityId: activityId);
  }

  @action
  void unsetEditActivityUrlParams() {
    editActivityUrlParams = const EditActivityUrlParam(
      activityId: 0,
    );
  }

  @action
  void setFindActivityUrlParams({
    int? activityId,
  }) {
    findActivityUrlParams = findActivityUrlParams.copyWith(activityId: activityId);
  }

  @action
  void unsetFindActivityUrlParams() {
    findActivityUrlParams = const FindActivityUrlParam(
      activityId: 0,
    );
  }

  @action
  void setRemoveActivityUrlParams({
    int? activityId,
  }) {
    removeActivityUrlParams = removeActivityUrlParams.copyWith(activityId: activityId);
  }

  @action
  void unsetRemoveActivityUrlParams() {
    removeActivityUrlParams = const RemoveActivityUrlParam(
      activityId: 0,
    );
  }

  @action
  void setListActivitiesQueryParams({
    int? page,
    String? category,
    String? city,
  }) {
    listActivitiesQueryParams = listActivitiesQueryParams.copyWith(
      page: page,
      category: category,
      city: city,
    );
  }

  @action
  void unsetListActivitiesQueryParams() {
    listActivitiesQueryParams = const ListActivitiesQueryParam(
      page: 1,
      category: '',
      city: '',
    );
  }

  @action
  void setImageName(String data) {
    imageName = data;
  }

  @action
  void setImageBytes(Uint8List data) {
    imageBytes = data;
  }

  @action
  void setActivities(List<ActivityModel> data) {
    currentPage == 1
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
  void setCategory(String? data) {
    category = data;
  }

  @action
  void setCity(String? data) {
    city = data;
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
  Future<void> index({String? category, String? city}) async {
    setIsLoadingIndex(true);

    listActivitiesQueryParams = listActivitiesQueryParams.copyWith(
      page: currentPage,
    );

    Either<PaginatedData<ActivityModel>> response = await activitiesRepository
        .listActivities(
          queryParams: listActivitiesQueryParams,
        );

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

    Either<ActivityModel> response = await activitiesRepository.addActivity(
      params: addActivityData.copyWith(
        imageBytes: imageBytes,
        imageName: imageName,
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

    Either<bool> response = await activitiesRepository.editActivity(
      params: editActivityData.copyWith(
        imageBytes: imageBytes,
        imageName: imageName,
      ),
      urlParams: editActivityUrlParams,
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
  Future<void> get() async {
    setIsLoadingGet(true);

    Either<ActivityModel> response = await activitiesRepository.findActivity(
      urlParams: findActivityUrlParams,
    );

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
  Future<void> delete() async {
    setIsLoadingDelete(true);

    Either<bool> response = await activitiesRepository.removeActivity(
      urlParams: removeActivityUrlParams,
    );

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingDelete(false);
    }

    if (response.isRight) {
      setIsLoadingDelete(false);
    }
  }

  bool allowInitialIndex(String? category, String? city) {
     bool allowInitialIndex =
        (currentPage == 1 && activities.isEmpty) ||
        category != this.category ||
        city != this.city;

    return allowInitialIndex;
  }
}
