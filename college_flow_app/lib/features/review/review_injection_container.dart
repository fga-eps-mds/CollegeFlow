import 'package:college_flow_app/core/injection_container.dart';
import 'package:college_flow_app/features/review/data/datasources/review_datasource.dart';
import 'package:college_flow_app/features/review/data/repositories/review_repository_impl.dart';
import 'package:college_flow_app/features/review/domain/repositories/review_repository.dart';
import 'package:college_flow_app/features/review/domain/usecases/create_review.dart';
import 'package:college_flow_app/features/review/domain/usecases/get_review_lists.dart';
import 'package:college_flow_app/features/review/infra/datasources/review_datasource_impl.dart';
import 'package:college_flow_app/features/review/infra/review_api_service.dart';
import 'package:college_flow_app/features/review/presentation/bloc/load_review_list_bloc.dart';
import 'package:get_it/get_it.dart';

class ReviewInjectionContainer implements InjectionContainer {
  @override
  Future<void> inject(GetIt serviceLocator) async {
    await injectServices(serviceLocator);
    await injectDatasources(serviceLocator);
    await injectRepositories(serviceLocator);
    await injectUsecases(serviceLocator);
    await injectBlocs(serviceLocator);
  }

  Future<void> injectServices(GetIt serviceLocator) async {
    serviceLocator.registerFactory<ReviewAPIService>(
      () => ReviewAPIService(serviceLocator()),
    );
  }

  Future<void> injectDatasources(GetIt serviceLocator) async {
    serviceLocator.registerFactory<ReviewDatasource>(
      () => ReviewDatasourceImpl(apiService: serviceLocator()),
    );
  }

  Future<void> injectRepositories(GetIt serviceLocator) async {
    serviceLocator.registerFactory<ReviewRepository>(
      () => ReviewRepositoryImpl(reviewDatasource: serviceLocator()),
    );
  }

  Future<void> injectUsecases(GetIt serviceLocator) async {
    serviceLocator.registerFactory<GetReviewList>(
      () => GetReviewListImpl(reviewRepository: serviceLocator()),
    );
    serviceLocator.registerFactory<CreateReview>(
      () => CreateReviewImpl(repository: serviceLocator()),
    );
  }

  Future<void> injectBlocs(GetIt serviceLocator) async {
    serviceLocator.registerLazySingleton<LoadReviewListBloc>(
      () => LoadReviewListBloc(getReviewList: serviceLocator()),
    );
  }
}
