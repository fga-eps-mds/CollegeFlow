import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:flutter/material.dart';

class CheckboxList extends StatelessWidget {
  const CheckboxList(
      {Key? key,
      required this.label,
      required this.padding,
      required this.value,
      required this.onChanged,
      this.checkboxShape,
      this.activeColor})
      : super(key: key);

  final String label;
  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color? activeColor;
  final OutlinedBorder? checkboxShape;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(child: Text(label)),
            Checkbox(
              activeColor: colorSecondary,
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              },
            ),
          ],
        ),
      ),
    );
  }
}
