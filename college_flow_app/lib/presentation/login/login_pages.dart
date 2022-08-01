import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/config/routes/flow_routes.dart';
import 'package:college_flow_app/presentation/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/presentation/widgets/gap.dart';
import 'package:college_flow_app/presentation/widgets/textfield/flow_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: spacingXXXS,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const VSpacer.lg(),
              Image.asset(
                'assets/imgs/logo.png',
              ),
              const VSpacer.lg(),
              Text(
                'Entre com a sua Conta',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: white,
                    ),
              ),
              const VSpacer.xxs(),
              const FlowTextField(
                label: "E-mail",
                placeholder: 'Digite seu Email Institucional',
              ),
              const VSpacer.xxxs(),
              const FlowTextField(
                label: "Senha",
                placeholder: 'Digite sua senha',
              ),
              const VSpacer.xxs(),
              FlowButton(
                label: "Login",
                //TODO(Mauricio-Machado): Add login call request
                onTap: () {},
              ),
              const VSpacer.xxs(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ainda não tem uma conta? Faça seu',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: white,
                        ),
                  ),
                  SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(FlowRoutes.registerPage);
                    },
                    child: Text(
                      "Cadastro",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: secondary,
                          ),
                    ),
                  ),
                ],
              )
            ],
          ),
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
