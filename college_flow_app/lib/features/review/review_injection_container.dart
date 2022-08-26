import 'package:college_flow_app/core/injection_container.dart';
import 'package:college_flow_app/features/review/domain/usecases/get_review_lists.dart';
import 'package:get_it/get_it.dart';

class ReviewInjectionContainer implements InjectionContainer {
  @override
  Future<void> inject(GetIt serviceLocator) async {
    await injectUsecases(serviceLocator);
  }

  Future<void> injectUsecases(GetIt serviceLocator) async {
    serviceLocator.registerFactory<GetReviewList>(() => GetReviewListImpl());
  }
}
