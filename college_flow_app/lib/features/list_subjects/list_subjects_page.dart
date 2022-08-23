import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/features/list_subjects/widgets/list_tile.dart';
import 'package:flutter/material.dart';

import '../../shared/widgets/gap.dart';
import '../../shared/widgets/header.dart';
import '../../shared/widgets/searchbar.dart';

class ListCoursesStudent extends StatefulWidget {
  const ListCoursesStudent({Key? key}) : super(key: key);

  @override
  State<ListCoursesStudent> createState() => _ListCoursesStudentState();
}

class _ListCoursesStudentState extends State<ListCoursesStudent> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorLightWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                  Column(
                    children: List.generate(
                      10,
                      (index) {
                        return const ListTileGenerate(
                          subjectTitle: "Métodos de Desenvolvimento de Software",
                          subjectSubtitle: "Código" " • " "Curso",
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
