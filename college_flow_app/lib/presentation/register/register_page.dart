import 'dart:ffi';

import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/object_styles/border_radius.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/presentation/register/register_geral.dart';
import 'package:college_flow_app/presentation/register/widgets/user_type_button.dart';
import 'package:college_flow_app/presentation/register/widgets/user_type_options.dart';
import 'package:college_flow_app/presentation/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/presentation/widgets/checkboxlist.dart';
import 'package:college_flow_app/presentation/widgets/flow_icon.dart';
import 'package:college_flow_app/presentation/widgets/flow_icon_button.dart';
import 'package:college_flow_app/presentation/widgets/gap.dart';
import 'package:college_flow_app/presentation/register/widgets/logo_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
