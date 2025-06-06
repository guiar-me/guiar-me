// This file is auto generated. DO NOT edit this file manually!
import 'package:equatable/equatable.dart';
import 'package:sdk_flutter/sdk_flutter.dart';

class RemoveSubscriptionUrlParam extends Equatable {
  final int subscriptionId;

  @override
  List<Object> get props => <Object>[
    subscriptionId,
  ];

  const RemoveSubscriptionUrlParam({
    required this.subscriptionId,
  });

  Json toMap() {
    return <String, dynamic>{
      'subscription_id': subscriptionId,
    };
  }

  RemoveSubscriptionUrlParam copyWith({
    int? subscriptionId,
  }) {
    return RemoveSubscriptionUrlParam(
      subscriptionId: subscriptionId ?? this.subscriptionId,
    );
  }
}
