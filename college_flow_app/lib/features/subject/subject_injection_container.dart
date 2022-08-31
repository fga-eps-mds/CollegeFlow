import 'package:college_flow_app/core/injection_container.dart';
import 'package:college_flow_app/features/subject/data/datasources/subject_datasource.dart';
import 'package:college_flow_app/features/subject/data/repositories/subject_repository_impl.dart';
import 'package:college_flow_app/features/subject/domain/repositories/subject_repository.dart';
import 'package:college_flow_app/features/subject/domain/usecase/get_subjects_list.dart';
import 'package:college_flow_app/features/subject/infra/datasources/subject_datasource_impl.dart';
import 'package:college_flow_app/features/subject/infra/subjects_api_service.dart';
import 'package:get_it/get_it.dart';

class SubjectInjectionContainer implements InjectionContainer {
  @override
  Future<void> inject(GetIt serviceLocator) async {
    await injectServices(serviceLocator);
    await injectDatasources(serviceLocator);
    await injectRepositories(serviceLocator);
    await injectUsecases(serviceLocator);
  }

  Future<void> injectServices(GetIt serviceLocator) async {
    serviceLocator.registerFactory<SubjectAPIService>(
      () => SubjectAPIService(serviceLocator()),
    );
  }

  Future<void> injectDatasources(GetIt serviceLocator) async {
    serviceLocator.registerFactory<SubjectDatasource>(
      () => SubjectDatasourceImpl(apiService: serviceLocator()),
    );
  }

  Future<void> injectRepositories(GetIt serviceLocator) async {
    serviceLocator.registerFactory<SubjectRepository>(
      () => SubjectRepositoryImpl(subjectDatasource: serviceLocator()),
    );
  }

  Future<void> injectUsecases(GetIt serviceLocator) async {
    serviceLocator.registerFactory<GetSubjectList>(
        () => GetSubjectListImpl(subjectRepository: serviceLocator()));
  }
}
