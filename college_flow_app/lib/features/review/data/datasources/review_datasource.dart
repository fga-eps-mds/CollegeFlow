import 'package:college_flow_app/features/review/data/models/review_model.dart';

abstract class ReviewDatasource {
  Future<List<ReviewModel>> getReviews();
}
