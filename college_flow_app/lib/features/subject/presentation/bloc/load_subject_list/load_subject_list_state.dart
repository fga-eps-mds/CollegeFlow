part of 'load_subject_list_bloc.dart';

@freezed
class SubjectListState with _$SubjectListState {
  const factory SubjectListState.error() = _Error;

  const factory SubjectListState.loading() = _Loading;

  const factory SubjectListState.loaded({
    required List<Subject> subjects,
  }) = _loaded;
}
