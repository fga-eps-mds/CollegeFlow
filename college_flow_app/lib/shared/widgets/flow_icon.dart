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

  const FlowIcon.home({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.home,
        super(key: key);

  const FlowIcon.admin({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.shield,
        super(key: key);

  const FlowIcon.professor({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.teacher,
        super(key: key);

  const FlowIcon.student({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.studentHat,
        super(key: key);

  const FlowIcon.arrowLeft({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.arrowLeft,
        super(key: key);

  const FlowIcon.arrowRight({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.arrowRight,
        super(key: key);

  const FlowIcon.settings({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.settings,
        super(key: key);

  const FlowIcon.checkOutlined({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.checkOutlined,
        super(key: key);

  const FlowIcon.checkFilled({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.checkFilled,
        super(key: key);

  const FlowIcon.chevronLeft({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.chevronLeft,
        super(key: key);

  const FlowIcon.chevronRight({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.chevronRight,
        super(key: key);

  const FlowIcon.search({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.search,
        super(key: key);

  const FlowIcon.filter({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.filter,
        super(key: key);

  const FlowIcon.likeFilled({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.likeFilled,
        super(key: key);

  const FlowIcon.likeOutlined({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.likeOutlined,
        super(key: key);

  const FlowIcon.star({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.star,
        super(key: key);

  const FlowIcon.book({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.book,
        super(key: key);

  const FlowIcon.rank({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.rank,
        super(key: key);

  const FlowIcon.copyLink({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.copyLink,
        super(key: key);

  const FlowIcon.user({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.user,
        super(key: key);

  const FlowIcon.editComment({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.editComment,
        super(key: key);

  const FlowIcon.courses({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.courses,
        super(key: key);

  const FlowIcon.professorTag({
    Key? key,
    this.size = iconSizeDefault,
    this.color = colorBlack,
  })  : icon = FlowIconData.professorTag,
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
