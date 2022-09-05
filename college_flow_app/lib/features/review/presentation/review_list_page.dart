import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/icons/flow_icon_data.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/core/service_locator_manager.dart';
import 'package:college_flow_app/config/routes/flow_routes.dart';
import 'package:college_flow_app/features/review/presentation/bloc/load_review_list_bloc.dart';
import 'package:college_flow_app/features/review/presentation/review_form_page.dart';
import 'package:college_flow_app/features/review/presentation/widgets/no_review_card.dart';
import 'package:college_flow_app/features/review/presentation/widgets/review_card.dart';
import 'package:college_flow_app/features/review/presentation/widgets/subject_card.dart';
import 'package:college_flow_app/shared/error_page.dart';
import 'package:college_flow_app/shared/loading_page.dart';
import 'package:college_flow_app/shared/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
import 'package:college_flow_app/shared/widgets/flow_icon_button.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReviewPageParams {
  final String name;
  final String code;
  final double rating;

  const ReviewPageParams({
    required this.code,
    required this.name,
    required this.rating,
  });
}

class ReviewPage extends StatefulWidget {
  const ReviewPage({
    Key? key,
    required this.params,
  }) : super(
          key: key,
        );

  final ReviewPageParams params;

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  late final LoadReviewListBloc _loadReviewListBloc;

  @override
  void initState() {
    super.initState();
    _loadReviewListBloc = ServiceLocatorManager.I.get();
    _loadReviewListBloc.add(
      LoadReviewListEvent.loadList(
        code: widget.params.code,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadReviewListBloc, LoadReviewListState>(
      bloc: _loadReviewListBloc,
      builder: (context, state) {
        return state.when(
          error: () => const ErrorPage(
            description:
                'Erro ao carregar lista de avaliações. Tente novamente mais tarde',
          ),
          loading: () => const LoadingPage(
            description: 'Carregando avaliações',
          ),
          loaded: (reviewList) {
            return Scaffold(
              body: Stack(
                children: [
                  CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        floating: true,
                        snap: true,
                        backgroundColor: colorPrimary,
                        elevation: 0,
                        leading: FlowIconButton(
                          key: const ValueKey('subjectReviewListGoBack'),
                          icon: FlowIconData.chevronLeft,
                          onTap: () {
                            _loadReviewListBloc
                                .add(const LoadReviewListEvent.reset());
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            SubjectCard(
                              reviewScore: widget.params.rating,
                              subjectCode: widget.params.code,
                              subjectName: widget.params.name,
                            ),
                            const VSpacer.xs(),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: spacingXXS),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Avaliações',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium,
                                    ),
                                  ),
                                  const Divider(
                                    thickness: spacingQuarck,
                                    color: colorSecondary,
                                  ),
                                  const VSpacer.xxs(),
                                  if (reviewList.isEmpty)
                                    const NoReviewsCard()
                                  else
                                    MediaQuery.removePadding(
                                      context: context,
                                      removeTop: true,
                                      child: ListView.builder(
                                        reverse: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: reviewList.length,
                                        itemBuilder: (context, index) {
                                          return Column(
                                            children: [
                                              ReviewCard(
                                                review: reviewList[index],
                                              ),
                                              const VSpacer.xxxs(),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                  const VSpacer.sm(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: spacingXXS,
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: FlowButton(
                            key: const ValueKey('CreateReviewButton'),
                            label: 'Criar avaliação',
                            suffixIcon: const FlowIcon.editComment(),
                            onTap: () => Navigator.of(context).pushNamed(
                              FlowRoutes.reviewForm,
                              arguments: ReviewFormParams(
                                name: widget.params.name,
                                code: widget.params.code,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const VSpacer.xxs(),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
