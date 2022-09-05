import 'package:college_flow_app/features/review/domain/entities/review.dart';
import 'package:college_flow_app/features/review/domain/params/create_review_params.dart';
import 'package:college_flow_app/features/review/domain/usecases/create_review.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_review_cubit.freezed.dart';
part 'create_review_state.dart';

class CreateReviewCubit extends Cubit<CreateReviewState> {
  static const String emptyWarning = 'Opa! Esse campo não pode ser vazio!';
  final CreateReview createReview;

  CreateReviewCubit({
    required this.createReview,
  }) : super(const CreateReviewState.initial());

  Future<void> sendReview({
    required String code,
    required String name,
    required String title,
    required String description,
    required double rating,
  }) async {
    emit(const CreateReviewState.loading());
    final errors = _validateReview(name, title, description);
    if (errors.isEmpty) {
      final result = await createReview.call(
          params: CreateReviewParams(
        code: code,
        review: Review(
          professor: name,
          score: rating,
          title: title,
          description: description,
        ),
      ));
      emit(
        result.fold(
          CreateReviewState.sucess,
          (_) => const CreateReviewState.error(),
        ),
      );
    }
    emit(CreateReviewState.invalid(inputErrors: errors));
  }

  Map<String, String> _validateReview(
    String name,
    String title,
    String description,
  ) {
    final Map<String, String> errorsMap = {};

    if (name.isEmpty) {
      errorsMap['nameError'] = emptyWarning;
    }

    if (title.isEmpty) {
      errorsMap['titleError'] = emptyWarning;
    }

    if (description.isEmpty) {
      errorsMap['descriptionError'] = emptyWarning;
    }

    return errorsMap;
  }
}
