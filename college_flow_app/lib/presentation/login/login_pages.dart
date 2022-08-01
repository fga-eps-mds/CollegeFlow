import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/presentation/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/presentation/widgets/gap.dart';
import 'package:flutter/material.dart';

import '../widgets/app_text.dart';
import '../widgets/input_text.dart';

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
      backgroundColor: const Color(0xff2C61F4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: spacingXXXS,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 64,
              ),
              SizedBox(
                width: 312,
                height: 76,
                child: Image.asset(
                  'assets/logo.png',
                ),
              ),
              SizedBox(
                height: 55,
              ),
              Text(
                'Entre com a sua Conta',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: white,
                    ),
              ),
              SizedBox(
                height: 24,
              ),
              InputText(placeholder: 'Digite seu Email Institucional'),
              SizedBox(
                height: 16,
              ),
              InputText(placeholder: 'Digite sua senha'),
              const VSpacer.xxs(),
              FlowButton(
                label: "Login",
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    }),
                  );
                },
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ainda não tem uma conta? Faça seu',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: white,
                        ),
                  ),
                  SizedBox(width: 3),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        }),
                      );
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
