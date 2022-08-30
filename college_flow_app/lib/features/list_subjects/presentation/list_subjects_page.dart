import 'package:college_flow_app/core/service_locator_manager.dart';
import 'package:college_flow_app/features/list_subjects/presentation/bloc/load_subject_list/load_subject_list_bloc.dart';
import 'package:college_flow_app/features/list_subjects/presentation/subjects_page.dart';
import 'package:college_flow_app/shared/error_page.dart';
import 'package:college_flow_app/shared/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListSubjectsPage extends StatefulWidget {
  const ListSubjectsPage({Key? key}) : super(key: key);

  @override
  State<ListSubjectsPage> createState() => _ListSubjectsPageState();
}

class _ListSubjectsPageState extends State<ListSubjectsPage> {
  late final SubjectListBloc subjectListBloc;

  @override
  void initState() {
    subjectListBloc = SubjectListBloc(
      getSubjectList: ServiceLocatorManager.I.get(),
    );
    subjectListBloc.add(
      const SubjectListEvent.loadSubjectList(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubjectListBloc, SubjectListState>(
      bloc: subjectListBloc,
      builder: (context, state) {
        return state.when(
          error: () => const ErrorPage(
            description: "Não foi possível carregar as disciplinas",
          ),
          loading: () => const LoadingPage(
            description: "Carregando disciplinas...",
          ),
          loaded: (subjectList) => SubjectsPage(
            subjectList: subjectList,
          ),
        );
      },
    );
  }
}
