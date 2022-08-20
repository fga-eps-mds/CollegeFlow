import 'package:college_flow_app/core/injection_container.dart';
import 'package:college_flow_app/features/authentication/infra/api_service.dart';
import 'package:get_it/get_it.dart';

class AuthenticationInjectionContainer implements InjectionContainer {
  @override
  Future<void> inject(GetIt serviceLocator) async {
    _injectServices(serviceLocator);
  }

  void _injectServices(GetIt serviceLocator) {
    serviceLocator.registerLazySingleton<APIService>(
      () => APIService(serviceLocator()),
    );
  }
}
