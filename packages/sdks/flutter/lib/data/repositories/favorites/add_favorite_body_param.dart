// This file is auto generated. DO NOT edit this file manually!
import 'package:equatable/equatable.dart';
import 'package:sdk_flutter/sdk_flutter.dart';

class AddFavoriteBodyParam extends Equatable {
  final int activityId;

  @override
  List<Object> get props => <Object>[
    activityId,
  ];

  const AddFavoriteBodyParam({
    required this.activityId,
  });

  Json toMap() {
    return <String, dynamic>{
      'activity_id': activityId,
    };
  }

  AddFavoriteBodyParam copyWith({
    int? activityId,
  }) {
    return AddFavoriteBodyParam(
      activityId: activityId ?? this.activityId,
    );
  }
}
