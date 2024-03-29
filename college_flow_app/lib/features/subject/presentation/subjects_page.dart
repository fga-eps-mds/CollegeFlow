import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/icons/flow_icon_data.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/features/subject/domain/entities/subject.dart';
import 'package:college_flow_app/features/subject/presentation/bloc/filter_subject_list/filter_subject_list_bloc.dart';
import 'package:college_flow_app/features/subject/widgets/searchbar.dart';
import 'package:college_flow_app/features/subject/widgets/subject_tile.dart';
import 'package:college_flow_app/shared/widgets/flow_icon_button.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:college_flow_app/shared/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/list_subjects_card.dart';

class SubjectsPage extends StatefulWidget {
  const SubjectsPage({
    Key? key,
    required this.subjectList,
  }) : super(
          key: key,
        );

  final List<Subject> subjectList;

  @override
  State<SubjectsPage> createState() => _SubjectsPageState();
}

class _SubjectsPageState extends State<SubjectsPage> {
  late final FilterListBloc filterListBloc;

  @override
  void initState() {
    filterListBloc = FilterListBloc(
      subjectList: widget.subjectList,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onUnfocus,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: colorPrimary,
              elevation: 0,
              leading: FlowIconButton(
                key: const ValueKey('subjectGoBackButton'),
                icon: FlowIconData.chevronLeft,
                onTap: Navigator.of(context).pop,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const ListSubjectsCard(
                    key: ValueKey('listSubjectsHeader'),
                    title: "disciplinas",
                    description: "Acesse uma Disciplina e veja suas Avaliações",
                    textAlign: TextAlign.start,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: spacingXXS,
                    ),
                    child: Column(
                      children: [
                        const VSpacer.xxs(),
                        SearchBar(
                          searchSubject: (String query) {
                            _onSearchSubject(
                              query: query,
                              subjectList: widget.subjectList,
                            );
                          },
                        ),
                        const VSpacer.xxs(),
                        BlocBuilder<FilterListBloc, FilterListState>(
                          bloc: filterListBloc,
                          builder: (context, state) {
                            return state.when(
                              noResults: () => const Center(
                                child: Text(
                                  'Sem resultados',
                                ),
                              ),
                              loading: () => const FlowLoading(
                                maxHeight: spacingMD,
                                maxWidth: spacingMD,
                              ),
                              filteredList: (filteredList) =>
                                  MediaQuery.removePadding(
                                context: context,
                                removeTop: true,
                                child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: filteredList.length,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        SubjectTile(
                                          key: ValueKey(
                                              filteredList[index].name),
                                          subject: filteredList[index],
                                        ),
                                        const VSpacer.xxxs(),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onUnfocus() {
    final FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  void _onSearchSubject({
    required String query,
    required List<Subject> subjectList,
  }) {
    filterListBloc.add(
      FilterListEvent.filterSubjectList(
        query: query,
        subjectList: subjectList,
      ),
    );
  }
}
