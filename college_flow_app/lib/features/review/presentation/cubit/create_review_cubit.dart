import 'package:college_flow_app/features/review/domain/entities/review.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_review_cubit.freezed.dart';
part 'create_review_state.dart';

class CreateReviewCubit extends Cubit<CreateReviewState> {
  static const String emptyWarning = 'Opa! Esse campo não pode ser vazio!';
  CreateReviewCubit() : super(const CreateReviewState.initial());

  Future<void> createReview({
    required String code,
    required String name,
    required String title,
    required String description,
  }) async {
    emit(const CreateReviewState.loading());
    // await Future.delayed(Duration(seconds: 3));
    final errors = _validateReview(name, title, description);
    if (errors.isEmpty) {
      //TODO(Mauricio-Machado): Post review request here
      print('TUDO certo aqui');
    }
    emit(CreateReviewState.error(errors: errors));
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
