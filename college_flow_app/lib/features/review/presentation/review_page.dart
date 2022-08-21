import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/icons/sizes.dart';
import 'package:college_flow_app/config/design_system/data/object_styles/border_radius.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:flutter/material.dart';

part './widgets/subject_card.dart';
part './widgets/review_score_tag.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  final String _mockSubjectName = 'any_subject';
  final String _mockSubjectCode = 'any_code';
  final double _scoreAmount = 3.2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        elevation: 0,
      ),
      body: Column(
        children: [
          SubjectCard(
            reviewScore: _scoreAmount,
            subjectCode: _mockSubjectCode,
            subjectName: _mockSubjectName,
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: spacingXXS),
            child: Text('Banana'),
          ),
        ],
      ),
    );
  }
}
