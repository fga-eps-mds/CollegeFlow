import 'package:bloc_test/bloc_test.dart';
import 'package:college_flow_app/features/review/presentation/bloc/load_review_list_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../mocks/get_review_list_mock.dart';
import '../../mocks/review_response_factory.dart';

void main() {
  final GetReviewListMock getReviewListMock = GetReviewListMock();

  const String code = 'any_code';

  final reviewResponse = ReviewResponseFactory.build();
  LoadReviewListBloc makeBloc() => LoadReviewListBloc(
        getReviewList: getReviewListMock,
      );

  group('SUCESS', () {
    blocTest<LoadReviewListBloc, LoadReviewListState>(
      'Should emit [loaded] when event loadList succedes',
      build: makeBloc,
      act: (bloc) {
        getReviewListMock.mockSuccess(reviewResponse: reviewResponse);
        bloc.add(
          const LoadReviewListEvent.loadList(code: code),
        );
      },
      expect: () => <LoadReviewListState>[
        LoadReviewListState.loaded(
          reviewList: reviewResponse.reviews,
          rating: reviewResponse.rating,
        ),
      ],
    );
  });

  group('FAILED', () {
    blocTest<LoadReviewListBloc, LoadReviewListState>(
      'Should emit [error] when loadList event fails',
      build: makeBloc,
      act: (bloc) {
        getReviewListMock.mockFail();
        bloc.add(
          const LoadReviewListEvent.loadList(code: code),
        );
      },
      expect: () => const <LoadReviewListState>[
        LoadReviewListState.error(),
      ],
    );
  });
}
