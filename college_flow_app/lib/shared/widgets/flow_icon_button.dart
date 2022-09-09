import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/icons/flow_icon_data.dart';
import 'package:college_flow_app/config/design_system/data/icons/sizes.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
import 'package:flutter/material.dart';

class FlowIconButton extends StatelessWidget {
  final FlowIconData icon;
  final FlowIconButtonStyle style;
  final VoidCallback onTap;
  final double size;

  const FlowIconButton({
    Key? key,
    required this.icon,
    required this.onTap,
    this.size = iconSizeMD,
    this.style = const FlowIconButtonStyle(),
  }) : super(key: key);

  const FlowIconButton.secondary({
    Key? key,
    required this.icon,
    required this.onTap,
    this.size = iconSizeDefault,
  })  : style = const FlowIconButtonStyle.secondary(),
        super(key: key);

  const FlowIconButton.inactive({
    Key? key,
    required this.icon,
    required this.onTap,
    this.size = iconSizeDefault,
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
          child: FlowIcon(
            icon,
            size: size,
            color: style.color,
          )),
    );
  }
}

class FlowIconButtonStyle {
  final Color color;

  const FlowIconButtonStyle({this.color = colorWhite});

  const FlowIconButtonStyle.secondary() : color = colorSecondary;

  const FlowIconButtonStyle.inactive() : color = colorDarkWhite;

  const FlowIconButtonStyle.primary() : color = colorPrimary;

  const FlowIconButtonStyle.black() : color = colorBlack;
}
