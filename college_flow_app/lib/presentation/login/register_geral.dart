import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/presentation/login/register_student.dart';
import 'package:college_flow_app/presentation/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/presentation/widgets/gap.dart';
import 'package:college_flow_app/presentation/widgets/input_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
            InputText(
              placeholder: 'Digite seu Nome completo',
              color: flowColorGrey,
            ),
            const VSpacer.xxxs(),
            Text(
              'Email Institucional',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: textColor,
                  ),
            ),
            const VSpacer.nano(),
            InputText(
              placeholder: 'Digite seu Email Institucional',
              color: flowColorGrey,
            ),
            const VSpacer.xxxs(),
            Text(
              'Celular',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: textColor,
                  ),
            ),
            const VSpacer.nano(),
            InputText(
              placeholder: 'Digite seu Número de celular',
              color: flowColorGrey,
            ),
            const VSpacer.xxxs(),
            Text(
              'Data de Naceimento',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: textColor,
                  ),
            ),
            const VSpacer.nano(),
            InputText(
              placeholder: 'Dia / Mês / Ano',
              color: flowColorGrey,
            ),
            const VSpacer.xxxs(),
            Text(
              'Senha',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: textColor,
                  ),
            ),
            const VSpacer.nano(),
            InputText(
              placeholder: 'Digite sua Senha',
              color: flowColorGrey,
            ),
            const VSpacer.nano(),
            InputText(
              placeholder: 'Confirme sua Senha',
              color: flowColorGrey,
            ),
            const VSpacer.sm(),
            FlowButton(
              label: "Continue",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return RegisterStudent();
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
