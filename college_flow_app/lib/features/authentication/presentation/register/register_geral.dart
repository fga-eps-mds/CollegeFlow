import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/shared/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:college_flow_app/shared/widgets/textfield/flow_text_field.dart';
import 'package:flutter/material.dart';

class RegisterGeral extends StatefulWidget {
  const RegisterGeral({Key? key}) : super(key: key);

  @override
  State<RegisterGeral> createState() => _RegisterGeralState();
}

class _RegisterGeralState extends State<RegisterGeral> {
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
              decoration: const BoxDecoration(color: primary),
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
            Image.asset('assets/imgs/add_image.png'),
            const VSpacer.xxxs(),
            Text(
              'Adicione uma foto de perfil',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: textColor,
                  ),
            ),
            const VSpacer.xs(),
            Text(
              'Nome',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: textColor,
                  ),
            ),
            const VSpacer.nano(),
            const FlowTextField(
              label: "Nome Completo",
              placeholder: 'Digite seu Nome completo',
            ),
            const VSpacer.xxxs(),
            Text(
              'Email Institucional',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: textColor,
                  ),
            ),
            const VSpacer.nano(),
            const FlowTextField(
              label: "E-mail",
              placeholder: 'Digite seu Email Institucional',
            ),
            const VSpacer.xxxs(),
            Text(
              'Celular',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: textColor,
                  ),
            ),
            const VSpacer.nano(),
            const FlowTextField(
              label: "Celular",
              placeholder: 'Digite seu Número de celular',
            ),
            const VSpacer.xxxs(),
            Text(
              'Data de Naceimento',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: textColor,
                  ),
            ),
            const VSpacer.nano(),
            const FlowTextField(
              label: "Data de Nascimento",
              placeholder: 'Dia / Mês / Ano',
            ),
            const VSpacer.xxxs(),
            Text(
              'Senha',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: textColor,
                  ),
            ),
            const VSpacer.nano(),
            const FlowTextField(
              label: "Senha",
              placeholder: 'Digite sua Senha',
            ),
            const VSpacer.nano(),
            const FlowTextField(
              label: "Confirme sua senha",
              placeholder: 'Confirme sua Senha',
            ),
            const VSpacer.sm(),
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
