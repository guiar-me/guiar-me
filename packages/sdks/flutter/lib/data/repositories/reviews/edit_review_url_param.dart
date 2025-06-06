// This file is auto generated. DO NOT edit this file manually!
import 'package:equatable/equatable.dart';
import 'package:sdk_flutter/sdk_flutter.dart';

class EditReviewUrlParam extends Equatable {
  final int reviewId;

  @override
  List<Object> get props => <Object>[
    reviewId,
  ];

  const EditReviewUrlParam({
    required this.reviewId,
  });

  Json toMap() {
    return <String, dynamic>{
      'review_id': reviewId,
    };
  }

  EditReviewUrlParam copyWith({
    int? reviewId,
  }) {
    return EditReviewUrlParam(
      reviewId: reviewId ?? this.reviewId,
    );
  }
}
