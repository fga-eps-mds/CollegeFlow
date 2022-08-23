import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:flutter/material.dart';

import '../../config/design_system/data/colors/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        InkWell(
          child: const Icon(
            Icons.search,
            size: 32,
            color: colorSecondary,
          ),
          onTap: () {},
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
              hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(color: colorDarkWhite,),
              isDense: true,
              contentPadding: const EdgeInsets.all(8.0),
            ),
          ),
        ),
        const VSpacer.xxxs(),
        InkWell(
          child: const Icon(
            Icons.filter_list,
            size: 32,
            color: colorSecondary,
          ),
          onTap: () {},
        ),
      ],
    );
  }
}