import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/features/authentication/presentation/register/widgets/logo_bar.dart';
import 'package:college_flow_app/shared/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:college_flow_app/shared/widgets/textfield/flow_text_field.dart';
import 'package:flutter/material.dart';

class RegisterStudent extends StatefulWidget {
  const RegisterStudent({Key? key}) : super(key: key);

  @override
  State<RegisterStudent> createState() => _RegisterStudentState();
}

class _RegisterStudentState extends State<RegisterStudent> {
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
              'Matrícula',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: textColor,
                  ),
            ),
            const VSpacer.nano(),
            const FlowTextField(
              label: "E-mail",
              placeholder: 'Digite sua Matrícula',
              borderColor: secondary,
              isDark: true,
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
              borderColor: secondary,
              isDark: true,
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
              borderColor: secondary,
              isDark: true,
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