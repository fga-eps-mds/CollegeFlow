import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/icons/sizes.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
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

  const FlowIconButton.secondary({
    Key? key,
    required this.icon,
    required this.onTap,
  })  : style = const FlowIconButtonStyle.secondary(),
        super(key: key);

  const FlowIconButton.inactive({
    Key? key,
    required this.icon,
    required this.onTap,
  })  : style = const FlowIconButtonStyle.inactive(),
        super(key: key);

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

  const FlowIconButtonStyle({this.color = colorPrimary});

  const FlowIconButtonStyle.secondary() : color = colorSecondary;

  const FlowIconButtonStyle.inactive() : color = colorDarkWhite;

  const FlowIconButtonStyle.white() : color = colorWhite;
}
