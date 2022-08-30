part of 'load_subject_list_bloc.dart';

@freezed
class SubjectListEvent with _$SubjectListEvent {
  const factory SubjectListEvent.loadSubjectList() = _LoadSubjectList;
}
