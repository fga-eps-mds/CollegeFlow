import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/presentation/register/widgets/card_list.dart';
import 'package:college_flow_app/presentation/register/widgets/logo_bar.dart';
import 'package:college_flow_app/presentation/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/presentation/widgets/gap.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: flowColorWhite,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const LogoBar(
              description: "Faça seu Cadastro para ter acesso ao Aplicativo!",
              textAlign: TextAlign.start,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: spacingSM),
              child: Column(
                children: [
                  const VSpacer.xs(),
                  Text(
                    "Marque as disciplinas que você está cursando agora",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: flowColorBlack,
                        ),
                  ),
                  const VSpacer.xxs(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        child: const Icon(
                          Icons.search,
                          size: 36,
                          color: secondary,
                        ),
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 40,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Digite as disciplinas que deseja buscar',
                            isDense: true,
                            contentPadding: EdgeInsets.all(8),
                          ),
                        ),
                      ),
                      InkWell(
                        child: const Icon(
                          Icons.filter_list,
                          size: 36,
                          color: secondary,
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  const VSpacer.xxs(),
                  Column(
                    children: List.generate(
                      8,
                      (index) {
                        return const CardList(
                          titleCourse: "Introdução a algebra linear ",
                          codeCourse: "FGA9091",
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            FlowButton(
              label: "Continuar",
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
