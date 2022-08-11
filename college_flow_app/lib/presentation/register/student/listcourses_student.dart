import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/presentation/register/widgets/logo_bar.dart';
import 'package:college_flow_app/presentation/widgets/gap.dart';
import 'package:flutter/material.dart';

class ListCoursesStudent extends StatefulWidget {
  const ListCoursesStudent({Key? key}) : super(key: key);

  @override
  State<ListCoursesStudent> createState() => _ListCoursesStudentState();
}

class _ListCoursesStudentState extends State<ListCoursesStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: flowColorWhite,
      body: SafeArea(
        child: Column(
          children: [
            const LogoBar(
              description: "Faça seu Cadastro para ter acesso ao Aplicativo!",
              textAlign: TextAlign.start,
            ),
            const VSpacer.xs(),
            Text(
              "Marque as disciplinas que você está cursando agora",
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: flowColorBlack,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
