import 'package:sdk_flutter/core/types/json.dart';
import 'package:equatable/equatable.dart';

class AddReviewParams extends Equatable {
  final int activityId;
  final double stars;
  final String description;

  @override
  List<Object> get props => <Object>[activityId, stars, description];

  const AddReviewParams({
    required this.activityId,
    required this.stars,
    required this.description,
  });

  Json toMap() {
    return <String, dynamic>{
      'activity_id': activityId,
      'stars': stars,
      'description': description,
    };
  }

  AddReviewParams copyWith({
    int? activityId,
    double? stars,
    String? description,
  }) {
    return AddReviewParams(
      activityId: activityId ?? this.activityId,
      stars: stars ?? this.stars,
      description: description ?? this.description,
    );
  }
}
