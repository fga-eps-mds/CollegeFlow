import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/icons/flow_icon_data.dart';
import 'package:college_flow_app/core/service_locator_manager.dart';
import 'package:college_flow_app/features/review/presentation/bloc/load_review_list_bloc.dart';
import 'package:college_flow_app/features/review/presentation/cubit/create_review_cubit.dart';
import 'package:college_flow_app/features/review/presentation/widgets/textfields/flow_text_field.dart';
import 'package:college_flow_app/features/review/presentation/widgets/textfields/description_text_field.dart';
import 'package:college_flow_app/shared/error_page.dart';
import 'package:college_flow_app/shared/widgets/flow_icon_button.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/features/review/presentation/widgets/header.dart';
import 'package:college_flow_app/shared/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';

class ReviewFormParams extends Equatable {
  final String name;
  final String code;

  const ReviewFormParams({
    required this.name,
    required this.code,
  });

  @override
  List get props => [name, code];
}

class ReviewForm extends StatefulWidget {
  const ReviewForm({
    Key? key,
    required this.params,
  }) : super(key: key);

  final ReviewFormParams params;

  @override
  State<ReviewForm> createState() => _ReviewFormState();
}

class _ReviewFormState extends State<ReviewForm> {
  late final CreateReviewCubit _createReviewCubit;

  final TextEditingController _professorController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  double rating = 0.0;

  @override
  void initState() {
    _createReviewCubit = CreateReviewCubit(
      createReview: ServiceLocatorManager.I.get(),
    );
    super.initState();
  }

  @override
  void dispose() {
    _createReviewCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorPrimary,
        leading: FlowIconButton(
          key: const ValueKey('subjectReviewListGoBack'),
          icon: FlowIconData.chevronLeft,
          onTap: Navigator.of(context).pop,
        ),
      ),
      backgroundColor: colorWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(
                title: 'Avaliação',
                description: widget.params.name.toLowerCase(),
              ),
              const VSpacer.xxs(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: spacingXXS),
                child: BlocConsumer<CreateReviewCubit, CreateReviewState>(
                  bloc: _createReviewCubit,
                  listener: (context, state) {
                    state.whenOrNull(sucess: () async {
                      ServiceLocatorManager.I.get<LoadReviewListBloc>().add(
                            LoadReviewListEvent.loadList(
                              code: widget.params.code,
                            ),
                          );
                      Navigator.of(context).pop();
                    }, error: () async {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const ErrorPage(
                          description:
                              'Erro ao enviar review!\nTente novamente mais tarde',
                        ),
                      ));
                    });
                  },
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FlowTextField(
                          key: const ValueKey('ProfessorTextField'),
                          controller: _professorController,
                          label: 'Nome do Professor Avaliado',
                          hint: 'Insira o nome do Professor',
                          borderColor: colorSecondary,
                          errorText: state.whenOrNull(
                            invalid: (errors) => errors["nameError"] ?? '',
                          ),
                        ),
                        const VSpacer.xxxs(),
                        FlowTextField(
                          key: const ValueKey('TitleTextField'),
                          controller: _titleController,
                          label: 'Título',
                          hint: 'Insira o Título para a avaliação',
                          borderColor: colorSecondary,
                          errorText: state.whenOrNull(
                            invalid: (errors) => errors["titleError"] ?? '',
                          ),
                        ),
                        const VSpacer.xxxs(),
                        DescriptionFieldText(
                          key: const ValueKey('DescriptionTextField'),
                          controller: _descriptionController,
                          label: 'Descrição',
                          hint: 'Insira uma Descrição para a avaliação',
                          borderColor: colorSecondary,
                          errorText: state.whenOrNull(
                            invalid: (errors) =>
                                errors["descriptionError"] ?? '',
                          ),
                        ),
                        const VSpacer.xxxs(),
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
                            glowColor: colorSecondary,
                            glowRadius: -2,
                            initialRating: rating,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: const EdgeInsets.symmetric(
                                horizontal: spacingQuarck),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: colorSecondary,
                            ),
                            onRatingUpdate: (newRating) {
                              rating = newRating;
                            },
                          ),
                        ),
                        const VSpacer.xxs(),
                        FlowButton(
                            key: const ValueKey('SendReviewButton'),
                            isLoading: state.maybeWhen(
                              orElse: () => false,
                              loading: () => true,
                            ),
                            label: 'Enviar avaliação',
                            suffixIcon: const FlowIcon.editComment(),
                            onTap: () {
                              _createReviewCubit.sendReview(
                                code: widget.params.code,
                                name: _professorController.text,
                                title: _titleController.text,
                                description: _descriptionController.text,
                                rating: rating,
                              );
                            }),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
