import 'package:college_flow_app/presentation/widgets/flow_icon.dart';
import 'package:flutter/material.dart';

abstract class FlowButtonBase extends StatefulWidget {
  final String label;
  final VoidCallback onTap;
  final FlowIcon? suffixIcon;
  final FlowIcon? prefixIcon;

  const FlowButtonBase({
    Key? key,
    required this.label,
    required this.onTap,
    required this.suffixIcon,
    required this.prefixIcon,
  }) : super(key: key);
}
