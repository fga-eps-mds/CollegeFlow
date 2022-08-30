import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/core/service_locator_manager.dart';
import 'package:college_flow_app/features/list_subjects/domain/entities/subject.dart';
import 'package:college_flow_app/features/list_subjects/domain/usecase/get_subjects_list.dart';
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
            description: "Não conseguimos carregar as matérias.",
          ),
          loading: () => const LoadingPage(
            description: "Carregando matérias",
          ),
          loaded: (subjectList) => SubjectsPage(
            subjectList: subjectList,
          ),
        );
      },
    );
  }
}
