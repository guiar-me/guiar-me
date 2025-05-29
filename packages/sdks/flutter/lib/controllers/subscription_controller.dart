import 'package:go_router/go_router.dart';
import 'package:mobx/mobx.dart';
import 'package:sdk_flutter/sdk_flutter.dart';

part 'subscription_controller.g.dart';

class SubscriptionController = SubscriptionControllerBase
    with _$SubscriptionController;

abstract class SubscriptionControllerBase with Store, BaseController {
  final SubscriptionsRepository subscriptionsRepository;
  final AlertContract alert;
  final GoRouter router;

  SubscriptionControllerBase(
    this.subscriptionsRepository,
    this.alert,
    this.router,
  );

  @observable
  AddSubscriptionBodyParam addSubscriptionBodyParam =
      const AddSubscriptionBodyParam(planId: 0, creditCardId: 0);

  @observable
  SubscriptionModel? subscription;

  @observable
  bool isLoadingGet = false;

  @observable
  bool isLoadingCreate = false;

  @action
  void setCreateSubscriptionParams({int? planId, int? creditCardId}) {
    addSubscriptionBodyParam = addSubscriptionBodyParam.copyWith(
      planId: planId,
      creditCardId: creditCardId,
    );
  }

  @action
  void unsetCreateSubscriptionParams() {
    addSubscriptionBodyParam = addSubscriptionBodyParam.copyWith(
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
  Future<void> get(int id) async {
    setIsLoadingGet(true);

    Either<SubscriptionModel> response = await subscriptionsRepository.findSubscription(
      urlParams: FindSubscriptionUrlParam(subscriptionId: id),
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

    Either<SubscriptionModel> response = await subscriptionsRepository.addSubscription(
      params: addSubscriptionBodyParam,
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
