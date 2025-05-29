import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobx/mobx.dart';
import 'package:sdk_flutter/sdk_flutter.dart';

part 'review_controller.g.dart';

class ReviewController = ReviewControllerBase with _$ReviewController;

abstract class ReviewControllerBase with Store, BaseController {
  final ReviewsRepository reviewsRepository;
  final AlertContract alert;
  final GoRouter router;

  ReviewControllerBase(this.reviewsRepository, this.alert, this.router);

  @observable
  AddReviewBodyParam addReviewBodyParam = const AddReviewBodyParam(
    activityId: 0,
    stars: 0,
    description: '',
    userId: 0,
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
    int? stars,
    String? description,
    int? userId,
  }) {
    addReviewBodyParam = addReviewBodyParam.copyWith(
      activityId: activityId,
      stars: stars,
      description: description,
      userId: userId,
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

    Either<PaginatedData<ReviewModel>> response = await reviewsRepository.listReviews(
      queryParams: ListReviewsQueryParam(activityId: activityId),
    );

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingIndex(false);
    }

    if (response.isRight) {
      setReviews(response.right!.data);
      setLastPage(response.right!.meta.lastPage);
      setIsLoadingIndex(false);
    }
  }

  @action
  Future<void> add(BuildContext context) async {
    setIsLoadingAdd(true);

    Either<ReviewModel> response = await reviewsRepository.addReview(
      params: addReviewBodyParam,
    );

    if (response.isLeft) {
      handleApiError(response.left!, alert, router);

      setIsLoadingAdd(false);
    }

    if (response.isRight) {
      setIsLoadingAdd(false);

      router.replace('/details?id=${addReviewBodyParam.activityId}');
    }
  }
}
