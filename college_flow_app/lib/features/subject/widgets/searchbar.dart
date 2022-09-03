import 'package:college_flow_app/config/design_system/data/object_styles/border_radius.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:flutter/material.dart';

import '../../../config/design_system/data/colors/colors.dart';
import '../../../shared/widgets/flow_icon.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.searchSubject,
  }) : super(key: key);

  final Function(String query) searchSubject;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        const FlowIcon.search(
          color: colorSecondary,
          size: spacingSM,
        ),
        const VSpacer.quarck(),
        Expanded(
          child: TextFormField(
            key: const ValueKey('searchTextFieldInput'),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: colorSecondary, width: spacingAtom),
                borderRadius:
                    BorderRadius.circular(objectStyleBorderRadiusPill),
              ),
              hintText: 'Digite o nome da disciplina',
              hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: colorDarkWhite,
                  ),
              isDense: true,
              contentPadding: const EdgeInsets.all(spacingNano),
            ),
            onChanged: searchSubject,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: colorBlack,
                ),
          ),
        ),
        const VSpacer.xxxs(),
      ],
    );
  }
}
