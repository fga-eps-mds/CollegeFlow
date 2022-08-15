import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/presentation/register/widgets/logo_bar.dart';

import 'package:college_flow_app/presentation/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/presentation/widgets/gap.dart';
import 'package:college_flow_app/presentation/widgets/textfield/flow_text_field.dart';
import 'package:flutter/material.dart';

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
            const FlowTextField(
              label: "Código de Administrador",
              placeholder: 'Digite seu código',
            ),
            const VSpacer.xxxs(),
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

  void togglePage(int page) {
    _pageViewController.animateToPage(
      page,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
    );
  }
}
