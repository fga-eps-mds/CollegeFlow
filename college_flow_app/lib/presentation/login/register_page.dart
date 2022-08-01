import 'dart:ffi';

import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/presentation/login/register_geral.dart';
import 'package:college_flow_app/presentation/widgets/buttons/flow_button.dart';
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
              'Selecione seu tipo de usuário:',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: textColor,
                  ),
            ),
            const VSpacer.xxs(),
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

  void togglePage(int page) {
    _pageViewController.animateToPage(
      page,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
    );
  }
}
