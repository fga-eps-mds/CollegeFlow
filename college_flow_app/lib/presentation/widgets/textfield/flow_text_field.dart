import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/presentation/widgets/gap.dart';
import 'package:flutter/material.dart';

class FlowTextField extends StatefulWidget {
  const FlowTextField({
    Key? key,
    required this.label,
    this.initialValue = '',
    this.onChanged,
    this.placeholder,
    this.controller,
    this.borderColor = white,
    this.isDark = false,
  }) : super(key: key);

  final String label;
  final String initialValue;
  final String? placeholder;
  final TextEditingController? controller;
  final Color borderColor;
  final bool isDark;

  final void Function(String)? onChanged;

  @override
  State<FlowTextField> createState() => _FlowTextFieldState();
}

class _FlowTextFieldState extends State<FlowTextField> {
  final _baseBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: white),
  );

  late final TextEditingController _textEditingController;
  late final GlobalKey<FormFieldState> _formFieldStateKey;

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

    final _initialValue = TextEditingValue(text: widget.initialValue);

    if (widget.controller != null) {
      widget.controller!.value = _initialValue;
    } else {
      _textEditingController = TextEditingController.fromValue(_initialValue);
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
              padding: const EdgeInsets.only(left: spacingNano),
              child: Text(
                widget.label,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: widget.isDark ? textColor : white,
                    ),
              ),
            ),
            const VSpacer.quarck(),
            TextField(
              controller: _controller,
              onChanged: (text) {
                if (widget.onChanged != null) {
                  widget.onChanged!(text);
                }
                state.reset();
                state.didChange(text);
              },
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(spacingNano),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: widget.borderColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: widget.borderColor),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
