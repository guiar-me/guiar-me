import 'package:sdk_flutter/controllers/contracts/alert.dart';
import 'package:sdk_flutter/core/failures/failure.dart';
import 'package:sdk_flutter/core/failures/unauthenticated_failure.dart';

mixin BaseController {
  void handleApiError(Failure left, AlertContract alert, router) {
    alert.error(title: left.message);

    if (left.runtimeType == UnauthenticatedFailure) {
      router.replace('/sign-in');
    }

    return;
  }
}
