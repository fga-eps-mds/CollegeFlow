import 'dart:ffi';

import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/presentation/register/register_geral.dart';
import 'package:college_flow_app/presentation/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/presentation/widgets/checkboxlist.dart';
import 'package:college_flow_app/presentation/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _student = false;
  bool _teacher = false;
  bool _adm = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 124,
              width: double.infinity,
              decoration: BoxDecoration(color: primary),
              padding: const EdgeInsets.symmetric(
                horizontal: spacingXXXS,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/imgs/logo.png',
                  ),
                  const VSpacer.nano(),
                  Text(
                    'Faça seu Cadastro para ter acesso ao Aplicativo!',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: white,
                        ),
                  ),
                ],
              ),
            ),
            const VSpacer.xxs(),
            Text(
              'Selecione seu tipo de usuário:',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: textColor,
                  ),
            ),
            Image.asset('assets/icons/student_icon.png'),
            const VSpacer.nano(),
            CheckboxList(
              label: 'Aluno',
              padding: const EdgeInsets.symmetric(horizontal: 118.0),
              value: _student,
              onChanged: (bool newValue) {
                setState(() {
                  _adm = false;
                  _student = newValue;
                  _teacher = false;
                });
              },
            ),
            Image.asset('assets/icons/professor_icon.png'),
            const VSpacer.nano(),
            CheckboxList(
              label: 'Professor',
              padding: const EdgeInsets.symmetric(horizontal: 108.0),
              value: _teacher,
              onChanged: (bool newValue) {
                setState(() {
                  _adm = false;
                  _teacher = newValue;
                  _student = false;
                });
              },
            ),
            Image.asset('assets/icons/admin_icon.png'),
            const VSpacer.nano(),
            CheckboxList(
              label: 'Administrador',
              padding: const EdgeInsets.symmetric(horizontal: 92.0),
              value: _adm,
              onChanged: (bool newValue) {
                setState(() {
                  _teacher = false;
                  _adm = newValue;
                  _student = false;
                });
              },
            ),
            const VSpacer.xxs(),
            FlowButton(
              label: "Continue",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return RegisterGeral();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
