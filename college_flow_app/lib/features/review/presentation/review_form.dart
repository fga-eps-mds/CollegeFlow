import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/object_styles/object_styles.dart';
import 'package:college_flow_app/features/review/presentation/widgets/textfields/flow_text_field.dart';
import 'package:college_flow_app/features/review/presentation/widgets/textfields/flow_text_field_variant.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/config/routes/flow_routes.dart';
import 'package:college_flow_app/features/review/presentation/widgets/header.dart';
import 'package:college_flow_app/shared/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:flutter/material.dart';

class ReviewForm extends StatefulWidget {
  const ReviewForm({Key? key}) : super(key: key);

  @override
  State<ReviewForm> createState() => _ReviewFormState();
}

class _ReviewFormState extends State<ReviewForm> {
  final _pageViewController = PageController();
  final String _mockSubjectName = 'Avaliação';
  final String _mockSubjectCode = 'Avalie uma Disciplina';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorPrimary,
      ),
      backgroundColor: colorWhite,
      body: SafeArea(
        child: Column(
          children: [
            Header(
              subjectCode: _mockSubjectCode,
              subjectName: _mockSubjectName,
            ),
            const VSpacer.xxs(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: spacingXXS),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FlowTextField(
                    label: 'Nome do Professor Avaliado',
                    hint: 'Insira o nome do Professor',
                    borderColor: colorSecondary,
                  ),
                  const VSpacer.xxs(),
                  const FlowTextField(
                    label: 'Título',
                    hint: 'Insira o Título para a avaliação',
                    borderColor: colorSecondary,
                  ),
                  const VSpacer.xxs(),
                  const VSpacer.nano(),
                  const FlowTextFieldVariant(
                      label: 'Descrição',
                      hint: 'Insira uma Descrição para a avaliação',
                      borderColor: colorSecondary),
                  const VSpacer.xxs(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Pontuação',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  const VSpacer.nano(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RatingBar.builder(
                      initialRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding:
                          const EdgeInsets.symmetric(horizontal: spacingQuarck),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: colorSecondary,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                ],
              ),
            ),
            const VSpacer.xxs(),
            FlowButton(
              label: 'Enviar avaliação',
              suffixIcon: const FlowIcon.editComment(),
              onTap: () => Navigator.of(context).pushNamed(
                FlowRoutes.reviewList,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _togglePage(int page) {
    _pageViewController.animateToPage(
      page,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
    );
  }
}
