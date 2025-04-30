import 'package:go_router/go_router.dart';
import 'package:sdk_flutter/controllers/base_controller.dart';
import 'package:sdk_flutter/controllers/contracts/alert.dart';
import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/core/types/types.dart';
import 'package:sdk_flutter/data/repositories/plans/add_plan_params.dart';
import 'package:sdk_flutter/data/repositories/plans/edit_plan_params.dart';
import 'package:sdk_flutter/data/repositories/plans/plan_repository.dart';
import 'package:sdk_flutter/domain/models/plan_model.dart';
import 'package:mobx/mobx.dart';

part 'plan_controller.g.dart';

class PlanController = PlanControllerBase with _$PlanController;

abstract class PlanControllerBase with Store, BaseController {
  final PlanRepository planRepository;
  final AlertContract alert;
  final GoRouter router;

  PlanControllerBase(this.planRepository, this.alert, this.router);

  @observable
  AddPlanParams addPlanData = const AddPlanParams(
    name: '',
    shortDescription: '',
    longDescription: '',
    frequency: '',
    value: 0,
    couponLimit: 0,
  );

  @observable
  EditPlanParams editPlanData = const EditPlanParams(
    id: 0,
    name: '',
    shortDescription: '',
    longDescription: '',
    frequency: '',
    value: 0,
    couponLimit: 0,
  );

  @observable
  List<PlanModel> plans = [];

  @observable
  PlanModel? plan;

  @observable
  bool isLoadingIndex = false;

  @observable
  bool isLoadingAdd = false;

  @observable
  bool isLoadingEdit = false;

  @observable
  bool isLoadingGet = false;

  @action
  void setAddPlanData({
    String? name,
    String? shortDescription,
    String? longDescription,
    String? frequency,
    double? value,
    int? couponLimit,
  }) {
    addPlanData = addPlanData.copyWith(
      name: name,
      shortDescription: shortDescription,
      longDescription: longDescription,
      frequency: frequency,
      value: value,
      couponLimit: couponLimit,
    );
  }

  @action
  void unsetAddPlanData() {
    addPlanData = const AddPlanParams(
      name: '',
      shortDescription: '',
      longDescription: '',
      frequency: '',
      value: 0,
      couponLimit: 0,
    );
  }

  @action
  void setEditPlanData({
    int? id,
    String? name,
    String? shortDescription,
    String? longDescription,
    String? frequency,
    double? value,
    int? couponLimit,
  }) {
    editPlanData = editPlanData.copyWith(
      id: id,
      name: name,
      shortDescription: shortDescription,
      longDescription: longDescription,
      frequency: frequency,
      value: value,
      couponLimit: couponLimit,
    );
  }

  @action
  void unsetEditPlanData() {
    editPlanData = const EditPlanParams(
      id: 0,
      name: '',
      shortDescription: '',
      longDescription: '',
      frequency: '',
      value: 0,
      couponLimit: 0,
    );
  }

  @action
  void setPlans(List<PlanModel> data) {
    currentPage == 1 ? plans = data : plans = [...plans, ...data];
  }

  @action
  void setPlan(PlanModel data) {
    plan = data;
  }

  @action
  void setIsLoadingIndex(bool loading) {
    currentPage == 1 ? isLoadingIndex = loading : setIsLoadingNextPage(loading);
  }

  @action
  void setIsLoadingGet(bool loading) {
    isLoadingGet = loading;
  }

  @action
  void unsetPlan() {
    plan = null;
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
  Future<void> index() async {
    setIsLoadingIndex(true);

    Either<PaginatedData<PlanModel>> response = await planRepository.index();

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingIndex(false);
    }

    if (response.isRight) {
      setPlans(response.right!.data);
      setLastPage(response.right!.meta.lastPage);

      setIsLoadingIndex(false);
    }
  }

  @action
  Future<void> get(String id) async {
    setIsLoadingGet(true);

    Either<PlanModel> response = await planRepository.get(id: id);

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingGet(false);
    }

    if (response.isRight) {
      setPlan(response.right!);

      setIsLoadingGet(false);
    }
  }

  @action
  Future<void> add() async {
    setIsLoadingAdd(true);

    Either<PlanModel> response = await planRepository.add(params: addPlanData);

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingAdd(false);
    }

    if (response.isRight) {
      unsetAddPlanData();

      setIsLoadingAdd(false);

      router.push('/plans');
    }
  }

  @action
  Future<void> edit() async {
    setIsLoadingEdit(true);

    Either<bool> response = await planRepository.edit(params: editPlanData);

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingEdit(false);
    }

    if (response.isRight) {
      unsetEditPlanData();
      unsetPlan();

      setIsLoadingEdit(false);

      router.push('/plans');
    }
  }

  bool allowInitialIndex() {
    bool allowInitialIndex = currentPage == 1 && plans.isEmpty;

    return allowInitialIndex;
  }
}
