import 'package:college_flow_app/presentation/register/widgets/user_type_button.dart';
import 'package:college_flow_app/presentation/widgets/flow_icon.dart';
import 'package:college_flow_app/presentation/widgets/gap.dart';
import 'package:flutter/material.dart';

class UserTypeOptions extends StatelessWidget {
  const UserTypeOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Selecione seu tipo de usuário:',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const VSpacer.lg(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            UserTypeButton(
              icon: const FlowIcon.student(),
              title: "Aluno",
              onTap: () {},
            ),
            UserTypeButton(
                icon: const FlowIcon.professor(),
                title: "Professor",
                onTap: () {}),
          ],
        ),
        UserTypeButton(
          icon: const FlowIcon.admin(),
          title: "Administrador",
          onTap: () {},
        ),
      ],
    );
  }
}
