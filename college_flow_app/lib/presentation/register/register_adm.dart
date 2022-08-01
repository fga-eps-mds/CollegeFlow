import 'dart:ffi';
import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/presentation/register/register_teacher.dart';

import 'package:college_flow_app/presentation/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/presentation/widgets/gap.dart';
import 'package:college_flow_app/presentation/widgets/input_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterAdministrator extends StatefulWidget {
  const RegisterAdministrator({Key? key}) : super(key: key);

  @override
  State<RegisterAdministrator> createState() => _RegisterAdministratorState();
}

class _RegisterAdministratorState extends State<RegisterAdministrator> {
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
              'Insira Abaixo o seu Código de Administrador',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: textColor,
                  ),
            ),
            const VSpacer.xs(),
            Text(
              'Código',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: textColor,
                  ),
            ),
            const VSpacer.nano(),
            InputText(
              placeholder: 'Digite seu código',
              color: flowColorGrey,
            ),
            const VSpacer.xxxs(),
            const VSpacer.xxs(),
            FlowButton(
              label: "Continue",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return RegisterTeacher();
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
