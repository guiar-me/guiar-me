import 'package:sdk_flutter/core/types/json.dart';
import 'package:equatable/equatable.dart';

class CreateSubscriptionParams extends Equatable {
  final int planId;
  final int creditCardId;

  @override
  List<Object?> get props => <Object?>[planId, creditCardId];

  const CreateSubscriptionParams({
    required this.planId,
    required this.creditCardId,
  });

  Json toMap() {
    return <String, dynamic>{'plan_id': planId, 'credit_card_id': creditCardId};
  }

  CreateSubscriptionParams copyWith({int? planId, int? creditCardId}) {
    return CreateSubscriptionParams(
      planId: planId ?? this.planId,
      creditCardId: creditCardId ?? this.creditCardId,
    );
  }
}
