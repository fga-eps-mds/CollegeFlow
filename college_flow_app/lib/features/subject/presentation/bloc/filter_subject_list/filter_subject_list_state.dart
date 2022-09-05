part of 'filter_subject_list_bloc.dart';

@freezed
class FilterListState with _$FilterListState {
  const factory FilterListState.noResults() = _NoResults;

  const factory FilterListState.loading() = _Loading;

  const factory FilterListState.filteredList({
    required List<Subject> subjects,
  }) = _filteredList;
}
