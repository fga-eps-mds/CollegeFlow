import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/features/list_subjects/widgets/subject_tile.dart';
import 'package:flutter/material.dart';

import '../../../shared/widgets/gap.dart';
import '../../../shared/widgets/header.dart';
import '../../review/list_example.dart';
import '../widgets/searchbar.dart';

class ListSubjectsPage extends StatefulWidget {
  const ListSubjectsPage({Key? key}) : super(key: key);

  @override
  State<ListSubjectsPage> createState() => _ListSubjectsPageState();
}

class _ListSubjectsPageState extends State<ListSubjectsPage> {
  final List<Subject> _mockSubjectList = subjectList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorLightWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //TO DO (Luan): Colocar o componente usado na tela Review form
            const Header(
              title: "disciplinas",
              description: "Acesse uma Disciplina e veja suas Avaliações",
              textAlign: TextAlign.start,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: spacingXXS),
              child: Column(
                children: [
                  const VSpacer.xxs(),
                  const SearchBar(),
                  const VSpacer.xxs(),
                  MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _mockSubjectList.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            SubjectTile(
                              subject: _mockSubjectList[index],
                            ),
                            const VSpacer.xxxs(),
                          ],
                        );
                      },
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
}
