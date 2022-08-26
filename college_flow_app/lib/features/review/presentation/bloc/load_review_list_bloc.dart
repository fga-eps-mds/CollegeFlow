import 'package:college_flow_app/features/review/domain/entities/review.dart';
import 'package:college_flow_app/features/review/domain/usecases/get_review_lists.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part './load_review_list_state.dart';
part './load_review_list_event.dart';
part 'load_review_list_bloc.freezed.dart';

class LoadReviewListBloc
    extends Bloc<LoadReviewListEvent, LoadReviewListState> {
  final GetReviewList getReviewList;

  LoadReviewListBloc({
    required this.getReviewList,
  }) : super(const LoadReviewListState.loading()) {
    on<LoadReviewListEvent>(
      (event, emit) async {
        await event.when(
          loadList: () async {
            await Future.delayed(const Duration(seconds: 3));
            final reviewListOrFailure = await getReviewList();
            emit(
              reviewListOrFailure.fold(
                (_) => const LoadReviewListState.error(),
                (reviewList) => LoadReviewListState.loaded(
                  reviewList: reviewList,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
