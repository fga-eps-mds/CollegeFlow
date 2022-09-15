part of './load_review_list_bloc.dart';

@freezed
class LoadReviewListState with _$LoadReviewListState {
  const factory LoadReviewListState.error() = _Error;

  const factory LoadReviewListState.loading() = _Loading;

  const factory LoadReviewListState.loaded({
    required List<Review> reviewList,
  }) = _loaded;
}
