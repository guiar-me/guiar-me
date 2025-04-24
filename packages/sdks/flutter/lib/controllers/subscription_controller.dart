import 'package:go_router/go_router.dart';
import 'package:sdk_flutter/controllers/base_controller.dart';
import 'package:sdk_flutter/controllers/contracts/alert.dart';
import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/data/repositories/subscriptions/add_subscription_params.dart';
import 'package:sdk_flutter/data/repositories/subscriptions/subscription_repository.dart';
import 'package:sdk_flutter/domain/models/subscription_model.dart';
import 'package:mobx/mobx.dart';

part 'subscription_controller.g.dart';

class SubscriptionController = SubscriptionControllerBase
    with _$SubscriptionController;

abstract class SubscriptionControllerBase with Store, BaseController {
  final SubscriptionRepository subscriptionRepository;
  final AlertContract alert;
  final GoRouter router;

  SubscriptionControllerBase(
    this.subscriptionRepository,
    this.alert,
    this.router,
  );

  @observable
  CreateSubscriptionParams createSubscriptionParams =
      const CreateSubscriptionParams(planId: 0, creditCardId: 0);

  @observable
  SubscriptionModel? subscription;

  @observable
  bool isLoadingGet = false;

  @observable
  bool isLoadingCreate = false;

  @action
  void setCreateSubscriptionParams({int? planId, int? creditCardId}) {
    createSubscriptionParams = createSubscriptionParams.copyWith(
      planId: planId,
      creditCardId: creditCardId,
    );
  }

  @action
  void unsetCreateSubscriptionParams() {
    createSubscriptionParams = createSubscriptionParams.copyWith(
      planId: 0,
      creditCardId: 0,
    );
  }

  @action
  void setSubscription(SubscriptionModel? data) {
    subscription = data;
  }

  @action
  void setIsLoadingGet(bool loading) {
    isLoadingGet = loading;
  }

  @action
  void setIsLoadingCreate(bool loading) {
    isLoadingCreate = loading;
  }

  @action
  Future<void> get(String id) async {
    setIsLoadingGet(true);

    Either<SubscriptionModel> response = await subscriptionRepository.get(
      id: id,
    );

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingGet(false);
    }

    if (response.isRight) {
      setSubscription(response.right!);

      setIsLoadingGet(false);
    }
  }

  @action
  Future<void> create() async {
    setIsLoadingCreate(true);

    Either<SubscriptionModel> response = await subscriptionRepository.create(
      params: createSubscriptionParams,
    );

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingCreate(false);
    }

    if (response.isRight) {
      unsetCreateSubscriptionParams();

      setIsLoadingCreate(false);

      router.push('/subscriptions');
    }
  }
}
