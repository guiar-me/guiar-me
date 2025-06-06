// This file is auto generated. DO NOT edit this file manually!
import 'package:equatable/equatable.dart';
import 'package:sdk_flutter/sdk_flutter.dart';

class RemoveFavoriteUrlParam extends Equatable {
  final int activityId;

  @override
  List<Object> get props => <Object>[
    activityId,
  ];

  const RemoveFavoriteUrlParam({
    required this.activityId,
  });

  Json toMap() {
    return <String, dynamic>{
      'activity_id': activityId,
    };
  }

  RemoveFavoriteUrlParam copyWith({
    int? activityId,
  }) {
    return RemoveFavoriteUrlParam(
      activityId: activityId ?? this.activityId,
    );
  }
}
