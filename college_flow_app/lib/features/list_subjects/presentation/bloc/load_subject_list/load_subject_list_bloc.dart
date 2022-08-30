import 'package:college_flow_app/features/list_subjects/domain/entities/subject.dart';
import 'package:college_flow_app/features/list_subjects/domain/usecase/get_subjects_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'load_subject_list_state.dart';
part 'load_subject_list_event.dart';
part 'load_subject_list_bloc.freezed.dart';

class SubjectListBloc extends Bloc<SubjectListEvent, SubjectListState> {
  final GetSubjectList getSubjectList;

  SubjectListBloc({
    required this.getSubjectList,
  }) : super(
          const SubjectListState.loading(),
        ) {
    on<SubjectListEvent>(
      (event, emit) async {
        await event.when(
          loadSubjectList: () async {
            final subjectListOrFail = await getSubjectList.call();
            emit(
              subjectListOrFail.fold(
                (_) => const SubjectListState.error(),
                (subjectList) => SubjectListState.loaded(
                  subjects: subjectList,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
