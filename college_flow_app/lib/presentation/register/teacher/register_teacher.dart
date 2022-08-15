import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/presentation/register/admin/register_adm.dart';
import 'package:college_flow_app/presentation/register/widgets/logo_bar.dart';
import 'package:college_flow_app/presentation/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/presentation/widgets/checkboxlist_material.dart';
import 'package:college_flow_app/presentation/widgets/gap.dart';
import 'package:flutter/material.dart';

class RegisterTeacher extends StatefulWidget {
  const RegisterTeacher({Key? key}) : super(key: key);

  @override
  State<RegisterTeacher> createState() => _RegisterTeacherState();
}

class _RegisterTeacherState extends State<RegisterTeacher> {
  final _pageViewController = PageController();
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: flowColorWhite,
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            const LogoBar(
              description: "Faça seu Cadastro para ter acesso ao Aplicativo!",
              textAlign: TextAlign.start,
            ),
            const VSpacer.xxs(),
            Text(
              'Marque as diciplinas que você ministra aulas',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: textColor,
                  ),
            ),
            const VSpacer.xxs(),
            InkWell(
              child: const Icon(
                Icons.search,
                size: 36,
                color: secondary,
              ),
              onTap: () {
                //action code when clicked
              },
            ),
            const VSpacer.xxs(),
            Text(
              'Nome         Semestre',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: textColor,
                  ),
            ),
            const VSpacer.nano(),
            CheckboxListMaterial(
              label: '             Nome Disciplina             ',
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              label1: 'X Semestre',
              value: _selected,
              onChanged: (bool newValue) {
                setState(() {
                  _selected = newValue;
                });
              },
            ),
            FlowButton(
              label: "Continue",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const RegisterAdministrator();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void togglePage(int page) {
    _pageViewController.animateToPage(
      page,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
    );
  }
}
