import 'package:college_flow_app/presentation/register/widgets/user_type_options.dart';
import 'package:college_flow_app/presentation/widgets/gap.dart';
import 'package:college_flow_app/presentation/register/widgets/logo_bar.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: const [
            LogoBar(
              description: "Faça seu Cadastro para ter acesso ao Aplicativo!",
            ),
            VSpacer.sm(),
            UserTypeOptions(),
          ],
        ),
      ),
    );
  }
}
