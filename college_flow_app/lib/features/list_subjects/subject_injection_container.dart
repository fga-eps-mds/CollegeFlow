import 'package:college_flow_app/core/injection_container.dart';
import 'package:college_flow_app/features/list_subjects/domain/usecase/get_subjects_list.dart';
import 'package:college_flow_app/features/list_subjects/infra/subjects_api_service.dart';
import 'package:get_it/get_it.dart';

class SubjectInjectionContainer implements InjectionContainer {
  @override
  Future<void> inject(GetIt serviceLocator) async {
    await injectServices(serviceLocator);
    await injectUsecases(serviceLocator);
  }

  Future<void> injectServices(GetIt serviceLocator) async {
    serviceLocator.registerFactory<SubjectAPIService>(
      () => SubjectAPIService(serviceLocator()),
    );
  }

  Future<void> injectUsecases(GetIt serviceLocator) async {
    serviceLocator.registerFactory<GetSubjectList>(() => GetSubjectListImpl());
  }
}
