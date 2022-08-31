import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/object_styles/object_styles.dart';
import 'package:college_flow_app/features/review/presentation/widgets/textfields/flow_text_field.dart';
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
                          Text(
                            'Descrição',
                            style: Theme.of(context).textTheme.titleMedium,
                            textAlign: TextAlign.start,
                          ),
                          const VSpacer.nano(),
                          Container(
                            height: 200,
                            padding: const EdgeInsets.only(
                              left: spacingNano,
                              right: spacingNano,
                              bottom: spacingNano,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                objectStyleBorderRadiusDefault,
                              ),
                              border: Border.all(
                                color: colorSecondary,
                                width: 1,
                              ),
                            ),
                            child: TextField(
                              //TODO: pass controller here
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:
                                    'Insira uma Descrição para a avaliação',
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(color: colorDarkWhite),
                              ),
                              maxLines: null,
                              expands: true,
                              maxLength: 500,
                            ),
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
