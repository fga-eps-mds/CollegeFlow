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
          size: spacingXS,
        ),
        const VSpacer.quarck(),
        SizedBox(
          width: 280,
          height: 32,
          child: TextFormField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: colorSecondary, width: 1),
                borderRadius: BorderRadius.circular(50.0),
              ),
              hintText: 'Digite as disciplinas que deseja buscar',
              hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: colorDarkWhite,
                  ),
              isDense: true,
              contentPadding: const EdgeInsets.all(8.0),
            ),
            onChanged: searchSubject,
          ),
        ),
        const VSpacer.xxxs(),
      ],
    );
  }
}
