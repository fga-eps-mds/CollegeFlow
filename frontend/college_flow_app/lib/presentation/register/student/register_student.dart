import 'dart:ffi';

import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/presentation/register/admin/register_adm.dart';
import 'package:college_flow_app/presentation/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/presentation/widgets/gap.dart';
import 'package:college_flow_app/presentation/widgets/textfield/flow_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterStudent extends StatefulWidget {
  const RegisterStudent({Key? key}) : super(key: key);

  @override
  State<RegisterStudent> createState() => _RegisterStudentState();
}

class _RegisterStudentState extends State<RegisterStudent> {
  final _pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primary,
      ),
      backgroundColor: flowColorWhite,
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
              'Matrícula',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: textColor,
                  ),
            ),
            const VSpacer.nano(),
            const FlowTextField(
              label: "E-mail",
              placeholder: 'Digite sua Matrícula',
            ),
            const VSpacer.xxxs(),
            Text(
              'Curso',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: textColor,
                  ),
            ),
            const VSpacer.nano(),
            const FlowTextField(
              label: "Curso",
              placeholder: 'selecione seu curso',
            ),
            const VSpacer.xxxs(),
            Text(
              'Semestre',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: textColor,
                  ),
            ),
            const VSpacer.nano(),
            const FlowTextField(
              label: "Semestre",
              placeholder: 'Digite seu semestre',
            ),
            const VSpacer.xxs(),
            FlowButton(
              label: "Continue",
              //TODO(Mauricio-Machado): add tap functionality
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
