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
      path: icon.toPath(size),
    );
  }

  // -- INTERFACE -- //

  const FlowIcon.chevronLeft({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.chevronLeft,
        super(key: key);

  const FlowIcon.add({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.add,
        super(key: key);

  const FlowIcon.close({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.close,
        super(key: key);

  const FlowIcon.delete({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.delete,
        super(key: key);

  const FlowIcon.home({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.home,
        super(key: key);

  const FlowIcon.admin({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorSecondary,
  })  : icon = FlowIconData.registerAdmin,
        super(key: key);

  const FlowIcon.professor({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorSecondary,
  })  : icon = FlowIconData.registerProfessor,
        super(key: key);

  const FlowIcon.student({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorSecondary,
  })  : icon = FlowIconData.registerStudent,
        super(key: key);
}

class _FlowIcon extends StatelessWidget {
  final double size;
  final Color? color;
  final IconData? icon;
  final String? path;

  const _FlowIcon({
    Key? key,
    this.size = iconSizeDefault,
    this.icon,
    this.color,
    this.path,
  })  : assert(path != null || icon != null, "Path or icon must be passed"),
        assert(
            path == null || icon == null, "Cannot provide both path and icon"),
        super(key: key);

  bool get _isIcon => icon != null;

  @override
  Widget build(BuildContext context) {
    if (_isIcon) {
      return Icon(
        icon!,
        size: size,
        color: color ?? colorBlack,
      );
    }

    return Image(image: AssetImage(path!));
  }
}
