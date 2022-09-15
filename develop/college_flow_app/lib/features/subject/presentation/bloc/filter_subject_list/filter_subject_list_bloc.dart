import 'package:college_flow_app/features/subject/domain/entities/subject.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_subject_list_state.dart';
part 'filter_subject_list_event.dart';
part 'filter_subject_list_bloc.freezed.dart';

class FilterListBloc extends Bloc<FilterListEvent, FilterListState> {
  final List<Subject> subjectList;

  FilterListBloc({
    required this.subjectList,
  }) : super(
          FilterListState.filteredList(subjects: subjectList),
        ) {
    on<FilterListEvent>(
      (event, emit) {
        event.when(
          filterSubjectList: (query, subjectList) {
            emit(const FilterListState.loading());

            final filteredList = subjectList.where((subject) {
              final subjectName = subject.name.toLowerCase();
              final input = query.toLowerCase();

              return subjectName.contains(input);
            }).toList();

            if (filteredList.isEmpty) {
              emit(
                const FilterListState.noResults(),
              );
            } else {
              emit(
                FilterListState.filteredList(
                  subjects: filteredList,
                ),
              );
            }
          },
        );
      },
    );
  }
}
