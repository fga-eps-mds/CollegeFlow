import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/icons/sizes.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:flutter/material.dart';

class FlowTextField extends StatefulWidget {
  const FlowTextField({
    Key? key,
    required this.label,
    this.initialValue = '',
    this.errorText,
    this.onChanged,
    this.hint,
    this.controller,
    this.borderColor = colorWhite,
    this.isDark = true,
  }) : super(key: key);

  final String label;
  final String initialValue;
  final String? errorText;
  final String? hint;
  final TextEditingController? controller;
  final Color borderColor;
  final bool isDark;

  final void Function(String)? onChanged;

  @override
  State<FlowTextField> createState() => _FlowTextFieldState();
}

class _FlowTextFieldState extends State<FlowTextField> {
  late final TextEditingController _textEditingController;
  late final GlobalKey<FormFieldState> _formFieldStateKey;

  bool get hasError => widget.errorText?.isNotEmpty == true;

  TextEditingController get _controller =>
      widget.controller ?? _textEditingController;

  void reset({String initialValue = ''}) {
    _formFieldStateKey.currentState?.reset();
    _controller.value = TextEditingValue(text: initialValue);
    _formFieldStateKey.currentState?.didChange(_controller.value.text);
  }

  @override
  void initState() {
    _formFieldStateKey = GlobalKey<FormFieldState>();

    final initialValue = TextEditingValue(text: widget.initialValue);

    if (widget.controller != null) {
      widget.controller!.value = initialValue;
    } else {
      _textEditingController = TextEditingController.fromValue(initialValue);
    }

    super.initState();
  }

  @override
  void dispose() {
    _formFieldStateKey.currentState?.dispose();

    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      key: _formFieldStateKey,
      initialValue: widget.initialValue,
      builder: (state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                widget.label,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: widget.isDark ? colorBlack : colorWhite,
                    ),
              ),
            ),
            const VSpacer.nano(),
            TextField(
              style: Theme.of(context).textTheme.bodyMedium,
              controller: _controller,
              onChanged: (text) {
                if (widget.onChanged != null) {
                  widget.onChanged!(text);
                }
                state.reset();
                state.didChange(text);
              },
              decoration: InputDecoration(
                hintText: widget.hint,
                hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: colorDarkWhite,
                    ),
                contentPadding: const EdgeInsets.all(spacingNano),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: widget.borderColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: widget.borderColor),
                ),
              ),
            ),
            const VSpacer.quarck(),
            if (hasError)
              Row(
                children: [
                  const FlowIcon.error(size: iconSizeSM, color: colorError),
                  const HSpacer.quarck(),
                  Expanded(
                    child: Text(
                      widget.errorText ?? '',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: colorError,
                          ),
                    ),
                  )
                ],
              ),
          ],
        );
      },
    );
  }
}
