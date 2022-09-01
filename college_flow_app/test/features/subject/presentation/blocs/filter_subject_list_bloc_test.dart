import 'package:bloc_test/bloc_test.dart';
import 'package:college_flow_app/features/subject/presentation/bloc/filter_subject_list/filter_subject_list_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../mocks/subject_entity_factory.dart';

void main() {
  late FilterListBloc filterListBloc;

  final subjectList = SubjectEntityFactory.buildList();

  FilterListBloc makeBloc() => FilterListBloc(subjectList: subjectList);

  group('SUCESS', () {
    blocTest<FilterListBloc, FilterListState>(
      'Should emit [loading, noResult] when filtering the list',
      build: makeBloc,
      act: (bloc) {
        const queryNoResult = 'any_query_no_result';
        bloc.add(
          FilterListEvent.filterSubjectList(
            query: queryNoResult,
            subjectList: subjectList,
          ),
        );
      },
      expect: () => const <FilterListState>[
        FilterListState.loading(),
        FilterListState.noResults(),
      ],
    );
    blocTest<FilterListBloc, FilterListState>(
      'Should emit [loading, filteredList] when filtering the list',
      build: makeBloc,
      act: (bloc) {
        const query = 'any_name';
        bloc.add(
          FilterListEvent.filterSubjectList(
            query: query,
            subjectList: subjectList,
          ),
        );
      },
      expect: () => <FilterListState>[
        const FilterListState.loading(),
        FilterListState.filteredList(
          subjects: subjectList,
        ),
      ],
    );
  });
}
