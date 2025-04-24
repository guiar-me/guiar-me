import 'package:sdk_flutter/controllers/contracts/alert.dart';
import 'package:sdk_flutter/core/failures/failure.dart';
import 'package:sdk_flutter/core/failures/unauthenticated_failure.dart';
import 'package:mobx/mobx.dart';

mixin BaseController {
  void handleApiError(Failure left, AlertContract alert, router) {
    alert.error(title: left.message, message: left.message);

    if (left.runtimeType == UnauthenticatedFailure) {
      router.replace('/sign-in');
    }

    return;
  }

  @observable
  int currentPage = 1;

  @observable
  int lastPage = 1;

  @observable
  bool isLoadingNextPage = false;

  @action
  void setCurrentPage(int data) {
    currentPage = data;
  }

  @action
  void setLastPage(int data) {
    lastPage = data;
  }

  @action
  void setIsLoadingNextPage(bool data) {
    isLoadingNextPage = data;
  }
}
