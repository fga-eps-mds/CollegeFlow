import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/icons/icons.dart';
import 'package:flutter/material.dart';

///Icon widget according to our design_system
class FlowIcon extends StatelessWidget {
  final FlowIconData icon;
  final Color? color;
  final double size;

  const FlowIcon(
    this.icon, {
    Key? key,
    this.size = iconSizeDefault,
    this.color,
  }) : super(key: key);

  FlowIcon copyWith({
    FlowIconData? icon,
    double? size,
    Color? color,
  }) =>
      FlowIcon(
        icon ?? this.icon,
        color: color ?? this.color,
        size: size ?? this.size,
        key: key,
      );

  //TODO(Mauricio_Machado): Remove this comment after documented this
  //If we add icons outside of material ones the logic will nee refac
  @override
  Widget build(BuildContext context) {
    return _FlowIcon(
      size: size,
      color: color,
      icon: icon.toIconData(),
    );
  }

  // -- INTERFACE -- //

  const FlowIcon.chevronLeft({
    Key? key,
    this.size = iconSizeDefault,
    this.color = flowColorGrey,
  })  : icon = FlowIconData.chevronLeft,
        super(key: key);

  const FlowIcon.add({
    Key? key,
    this.size = iconSizeDefault,
    this.color = flowColorGrey,
  })  : icon = FlowIconData.add,
        super(key: key);

  const FlowIcon.close({
    Key? key,
    this.size = iconSizeDefault,
    this.color = flowColorGrey,
  })  : icon = FlowIconData.close,
        super(key: key);

  const FlowIcon.delete({
    Key? key,
    this.size = iconSizeDefault,
    this.color = flowColorGrey,
  })  : icon = FlowIconData.delete,
        super(key: key);

  const FlowIcon.home({
    Key? key,
    this.size = iconSizeDefault,
    this.color = flowColorGrey,
  })  : icon = FlowIconData.home,
        super(key: key);
}

class _FlowIcon extends StatelessWidget {
  final double size;
  final Color? color;
  final IconData? icon;

  const _FlowIcon({
    Key? key,
    this.size = iconSizeDefault,
    required this.icon,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon!,
      size: size,
      color: color ?? flowColorGrey,
    );
  }
}
