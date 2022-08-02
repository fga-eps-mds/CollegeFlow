import 'package:college_flow_app/config/routes/flow_routes.dart';
import 'package:college_flow_app/presentation/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/presentation/widgets/flow_icon.dart';
import 'package:college_flow_app/presentation/widgets/flow_icon_button.dart';
import 'package:flutter/material.dart';

class SecondScreenPage extends StatelessWidget {
  const SecondScreenPage({
    Key? key,
    this.title = "",
  }) : super(
          key: key,
        );

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: FlowIconButton(
          icon: const FlowIcon.chevronLeft(),
          onTap: Navigator.of(context).pop,
        ),
      ),
      body: Center(
        child: FlowButton(
          label: "Go back",
          onTap: Navigator.of(context).pop,
        ),
      ),
    );
  }
}
