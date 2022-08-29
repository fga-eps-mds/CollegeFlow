import 'package:college_flow_app/core/injection_container.dart';
import 'package:college_flow_app/features/list_subjects/domain/usecase/get_subjects_list.dart';
import 'package:get_it/get_it.dart';

class SubjectInjectionContainer implements InjectionContainer {
  @override
  Future<void> inject(GetIt serviceLocator) async {
    await injectUsecases(serviceLocator);
  }

  Future<void> injectUsecases(GetIt serviceLocator) async {
    serviceLocator.registerFactory<GetSubjectList>(() => GetSubjectListImpl());
  }
}
