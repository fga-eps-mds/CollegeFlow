part of 'filter_subject_list_bloc.dart';

@freezed
class FilterListEvent with _$FilterListEvent {
  const factory FilterListEvent.filterSubjectList({
    required String query,
    required List<Subject> subjectList,
  }) = _FilterSubjectList;
}
