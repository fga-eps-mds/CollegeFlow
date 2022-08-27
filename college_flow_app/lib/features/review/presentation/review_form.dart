import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/features/review/presentation/widgets/flow_text_field.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/config/routes/flow_routes.dart';
import 'package:college_flow_app/features/review/presentation/widgets/header.dart';
import 'package:college_flow_app/shared/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReviewForm extends StatefulWidget {
  const ReviewForm({Key? key}) : super(key: key);

  @override
  State<ReviewForm> createState() => _ReviewFormState();
}

class _ReviewFormState extends State<ReviewForm> {
  final String _mockSubjectName = 'Avaliação';
  final String _mockSubjectCode = 'Avalie uma Disciplina';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              const SliverAppBar(
                floating: true,
                snap: true,
                backgroundColor: colorPrimary,
                elevation: 0,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Header(
                      subjectCode: _mockSubjectCode,
                      subjectName: _mockSubjectName,
                    ),
                    const VSpacer.xxs(),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: spacingXXS),
                      child: Column(
                        children: [
                          const FlowTextField(
                            label: 'Nome do Professor Avaliado',
                            placeholder: 'Insira o nome do Professor',
                            borderColor: colorSecondary,
                          ),
                          const VSpacer.xxs(),
                          const FlowTextField(
                            label: 'Título',
                            placeholder: 'Insira o Título para a avaliação',
                            borderColor: colorSecondary,
                          ),
                          const VSpacer.xxs(),
                          const FlowTextField(
                            label: 'Descrição',
                            placeholder:
                                'Insira uma Descrição para a avaliação',
                            borderColor: colorSecondary,
                          ),
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
                              itemPadding: EdgeInsets.symmetric(
                                  horizontal: spacingQuarck),
                              itemBuilder: (context, _) => Icon(
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
                  ],
                ),
              )
            ],
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: spacingXXS,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FlowButton(
                  label: 'Enviar avaliação',
                  suffixIcon: const FlowIcon.editComment(),
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      FlowRoutes.reviewList,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
