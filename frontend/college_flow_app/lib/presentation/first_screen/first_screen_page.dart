import 'package:college_flow_app/config/routes/flow_routes.dart';
import 'package:college_flow_app/presentation/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/presentation/widgets/flow_icon.dart';
import 'package:college_flow_app/presentation/widgets/flow_icon_button.dart';
import 'package:flutter/material.dart';

class FirstScreenPage extends StatelessWidget {
  const FirstScreenPage({
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
      ),
      body: Center(
        child: FlowButton(
          label: "Go to secondPage",
          onTap: () {
            Navigator.of(context).pushNamed(FlowRoutes.secondPage);
          },
        ),
      ),
    );
  }
}
