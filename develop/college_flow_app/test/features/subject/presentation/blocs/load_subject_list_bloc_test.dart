import 'package:bloc_test/bloc_test.dart';
import 'package:college_flow_app/features/subject/presentation/bloc/load_subject_list/load_subject_list_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../mocks/get_subjects_list_mock.dart';
import '../../mocks/subject_entity_factory.dart';

void main() {
  late GetSubjectsListMock getSubjectsListMock;

  SubjectListBloc makeBloc() => SubjectListBloc(
        getSubjectList: getSubjectsListMock,
      );

  group('FAILED', () {
    blocTest<SubjectListBloc, SubjectListState>(
      'emits [error] when usecase get subject list fails.',
      setUp: () {
        getSubjectsListMock = GetSubjectsListMock();
      },
      build: makeBloc,
      act: (bloc) {
        getSubjectsListMock.mockFail();
        bloc.add(
          const SubjectListEvent.loadSubjectList(),
        );
      },
      expect: () => const <SubjectListState>[
        SubjectListState.error(),
      ],
    );
  });

  group('SUCESS', () {
    blocTest<SubjectListBloc, SubjectListState>(
      'emits [loaded] when usecase get subject list fails.',
      setUp: () {
        getSubjectsListMock = GetSubjectsListMock();
      },
      build: makeBloc,
      act: (bloc) {
        getSubjectsListMock.mockSucess();
        bloc.add(
          const SubjectListEvent.loadSubjectList(),
        );
      },
      expect: () => <SubjectListState>[
        SubjectListState.loaded(
          subjects: SubjectEntityFactory.buildList(),
        )
      ],
    );
  });
}
