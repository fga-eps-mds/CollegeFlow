import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/shared/widgets/buttons/flow_button_base.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:college_flow_app/shared/widgets/loading.dart';
import 'package:flutter/material.dart';

import '../../../config/design_system/data/object_styles/object_styles.dart';

class FlowButton extends FlowButtonBase {
  final FlowButtonStyle style;
  final bool isDisabled;
  final bool isExpanded;
  final bool isLoading;

  const FlowButton({
    Key? key,
    required String label,
    required VoidCallback onTap,
    FlowIcon? prefixIcon,
    FlowIcon? suffixIcon,
    this.isExpanded = true,
    this.isDisabled = false,
    this.isLoading = false,
    this.style = const FlowButtonStyle.primary(),
  })  : assert(
          !(suffixIcon != null && prefixIcon != null),
          'Cannot provide both a preffixIcon and  suffixIcon',
        ),
        super(
          key: key,
          label: label,
          onTap: onTap,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        );

  @override
  State<StatefulWidget> createState() => _FlowButtonState();
}

class _FlowButtonState extends State<FlowButton> {
  BorderRadius get _borderRadius => const BorderRadius.all(
        Radius.circular(objectStyleBorderRadiusPill),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.isDisabled
            ? widget.style.backgroundColor.disabled
            : widget.style.backgroundColor.mainly,
        borderRadius: BorderRadius.circular(
          objectStyleBorderRadiusPill,
        ),
        border: Border.all(
          color: colorWhite,
          width: spacingAtom,
        ),
      ),
      child: InkWell(
        borderRadius: _borderRadius,
        onTap: widget.isDisabled || widget.isLoading ? null : widget.onTap,
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: widget.style.backgroundColor.pressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: spacingNano,
          ),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            child: widget.isLoading
                ? Center(
                    child: FlowLoading.dark(),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize:
                        widget.isExpanded ? MainAxisSize.max : MainAxisSize.min,
                    children: [
                      const HSpacer.xxs(),
                      if (widget.prefixIcon != null)
                        widget.prefixIcon!.copyWith(
                          color: widget.isDisabled
                              ? widget.style.labelColor.disabled
                              : widget.style.labelColor.mainly,
                        ),
                      const HSpacer.nano(),
                      Text(
                        widget.label,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: colorWhite,
                            ),
                      ),
                      const HSpacer.nano(),
                      if (widget.suffixIcon != null)
                        widget.suffixIcon!.copyWith(
                          color: widget.isDisabled
                              ? widget.style.labelColor.disabled
                              : widget.style.labelColor.mainly,
                        ),
                      const HSpacer.xxs(),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}

class FlowButtonStyle {
  final FlowColorStyle backgroundColor;
  final FlowColorStyle labelColor;

  const FlowButtonStyle({
    required this.backgroundColor,
    required this.labelColor,
  });

  FlowButtonStyle copyWith({
    FlowColorStyle? backgroundColor,
    FlowColorStyle? labelColor,
  }) =>
      FlowButtonStyle(
        backgroundColor: backgroundColor ?? this.backgroundColor,
        labelColor: labelColor ?? this.labelColor,
      );

  const FlowButtonStyle.primary()
      : backgroundColor = const FlowColorStyle(
          mainly: colorSecondary,
          //TODO(Mauricio-Machado): Add styles to pressed and disabled
          pressed: colorError,
          disabled: colorLightError,
        ),
        labelColor = const FlowColorStyle(
          mainly: colorBlack,
          //TODO(Mauricio-Machado): Add styles to pressed and disabled
          pressed: colorBlack,
          disabled: colorBlack,
        );
}

class FlowColorStyle {
  final Color mainly;
  final Color pressed;
  final Color disabled;

  const FlowColorStyle({
    required this.mainly,
    required this.pressed,
    required this.disabled,
  });

  FlowColorStyle copyWith({
    Color? mainly,
    Color? pressed,
    Color? disabled,
  }) =>
      FlowColorStyle(
        mainly: mainly ?? this.mainly,
        pressed: pressed ?? this.pressed,
        disabled: disabled ?? this.disabled,
      );
}
