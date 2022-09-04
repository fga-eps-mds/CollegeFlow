part of 'create_review_cubit.dart';

@freezed
class CreateReviewState with _$CreateReviewState {
  const factory CreateReviewState.initial() = _Initial;

  const factory CreateReviewState.error({
    required Map<String, String> errors,
  }) = _Error;

  const factory CreateReviewState.loading() = _Loading;

  const factory CreateReviewState.sucess() = _Sucess;
}
