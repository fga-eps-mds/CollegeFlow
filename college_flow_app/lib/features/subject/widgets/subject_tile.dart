import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/object_styles/object_styles.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/config/routes/flow_routes.dart';
import 'package:college_flow_app/features/review/presentation/review_list_page.dart';
import 'package:college_flow_app/features/subject/domain/entities/subject.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
import 'package:flutter/material.dart';

class SubjectTile extends StatelessWidget {
  const SubjectTile({
    Key? key,
    required this.subject,
  }) : super(key: key);

  final Subject subject;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(vertical: -4),
      horizontalTitleGap: spacingXXXS,
      textColor: colorBlack,
      iconColor: colorBlack,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: colorDarkWhite,
          width: spacingAtom,
        ),
        borderRadius: BorderRadius.circular(
          objectStyleBorderRadiusDefault,
        ),
      ),
      tileColor: colorLightWhite,
      selectedColor: colorSecondary,
      title: Text(
        subject.name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.titleSmall,
      ),
      subtitle: Text(
        subject.code,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodySmall,
      ),
      trailing: const FlowIcon.arrowRight(),
      onTap: () => Navigator.of(context).pushNamed(
        FlowRoutes.reviewList,
        arguments: ReviewPageParams(
          code: subject.code,
          name: subject.name,
          rating: subject.rating,
        ),
      ),
    );
  }
}
