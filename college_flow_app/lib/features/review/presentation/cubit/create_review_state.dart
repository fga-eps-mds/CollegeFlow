part of 'create_review_cubit.dart';

@freezed
class CreateReviewState with _$CreateReviewState {
  const factory CreateReviewState.initial() = _Initial;

  const factory CreateReviewState.invalid({
    required Map<String, String> inputErrors,
  }) = _Invalid;

  const factory CreateReviewState.error() = _Error;

  const factory CreateReviewState.loading() = _Loading;

  const factory CreateReviewState.sucess() = _Sucess;
}
