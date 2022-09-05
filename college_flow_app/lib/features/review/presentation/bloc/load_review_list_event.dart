part of './load_review_list_bloc.dart';

@freezed
class LoadReviewListEvent with _$LoadReviewListEvent {
  const factory LoadReviewListEvent.loadList({
    required String code,
  }) = _LoadList;

  const factory LoadReviewListEvent.reset() = _Reset;
}
