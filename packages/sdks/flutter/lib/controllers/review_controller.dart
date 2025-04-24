import 'package:sdk_flutter/controllers/base_controller.dart';
import 'package:sdk_flutter/controllers/contracts/alert.dart';
import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/data/repositories/reviews/review_repository.dart';
import 'package:sdk_flutter/data/repositories/reviews/add_review_params.dart';
import 'package:sdk_flutter/domain/models/review_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobx/mobx.dart';

part 'review_controller.g.dart';

class ReviewController = ReviewControllerBase with _$ReviewController;

abstract class ReviewControllerBase with Store, BaseController {
  final ReviewRepository reviewRepository;
  final AlertContract alert;
  final GoRouter router;

  ReviewControllerBase(this.reviewRepository, this.alert, this.router);

  @observable
  AddReviewParams addReviewParams = const AddReviewParams(
    activityId: 0,
    stars: 0,
    description: '',
  );

  @observable
  List<ReviewModel> reviews = [];

  @observable
  bool isLoadingIndex = false;

  @observable
  bool isLoadingAdd = false;

  @action
  void setAddReviewParams({
    int? activityId,
    double? stars,
    String? description,
  }) {
    addReviewParams = addReviewParams.copyWith(
      activityId: activityId,
      stars: stars,
      description: description,
    );
  }

  @action
  void setReviews(List<ReviewModel> data) {
    reviews = data;
  }

  @action
  void setIsLoadingIndex(bool loading) {
    isLoadingIndex = loading;
  }

  @action
  void setIsLoadingAdd(bool loading) {
    isLoadingAdd = loading;
  }

  @action
  Future<void> index({required int activityId}) async {
    setIsLoadingIndex(true);

    Either<List<ReviewModel>> response = await reviewRepository.index(
      activityId: activityId,
    );

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingIndex(false);
    }

    if (response.isRight) {
      setReviews(response.right!);

      setIsLoadingIndex(false);
    }
  }

  @action
  Future<void> add(BuildContext context) async {
    setIsLoadingAdd(true);

    Either<ReviewModel> response = await reviewRepository.add(
      params: addReviewParams,
    );

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingAdd(false);
    }

    if (response.isRight) {
      setIsLoadingAdd(false);

      router.replace('/details?id=${addReviewParams.activityId}');
    }
  }
}
