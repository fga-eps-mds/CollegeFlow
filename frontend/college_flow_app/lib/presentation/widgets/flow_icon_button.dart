import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/icons/sizes.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/presentation/widgets/flow_icon.dart';
import 'package:flutter/material.dart';

class FlowIconButton extends StatelessWidget {
  final FlowIcon icon;
  final FlowIconButtonStyle style;
  final VoidCallback onTap;

  const FlowIconButton({
    Key? key,
    required this.icon,
    required this.onTap,
    this.style = const FlowIconButtonStyle(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: spacingNano,
          horizontal: spacingNano,
        ),
        child: icon.copyWith(size: iconSizeDefault, color: style.color),
      ),
    );
  }
}

class FlowIconButtonStyle {
  final Color color;

  //TODO(Mauricio-Machado): define color for default style
  const FlowIconButtonStyle({this.color = flowColorWhite});

  //TODO(Mauricio-Machado): More variants
  const FlowIconButtonStyle.onPrimary() : color = flowColorRed;
}
