part of './load_review_list_bloc.dart';

@freezed
class LoadReviewListEvent with _$LoadReviewListEvent {
  const factory LoadReviewListEvent.loadList() = _LoadList;
}
