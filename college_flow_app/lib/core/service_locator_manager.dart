import 'package:college_flow_app/core/api_client.dart';
import 'package:college_flow_app/features/review/review_injection_container.dart';
import 'package:college_flow_app/features/subject/subject_injection_container.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

abstract class ServiceLocatorManager {
  static ServiceLocatorManager? _instance;

  factory ServiceLocatorManager() => instance;

  static ServiceLocatorManager get instance {
    _instance ??= _ServiceLocatorManagerImpl();
    return _instance!;
  }

  static ServiceLocatorManager get I => instance;

  Future<void> init();

  T get<T extends Object>({
    String? instanceName,
    dynamic param1,
    dynamic param2,
  });

  //TODO(Mauricio-Machado): Study about implementing reset injections
}

class _ServiceLocatorManagerImpl implements ServiceLocatorManager {
  final GetIt _serviceLocator = GetIt.I;
  final Dio dio = APIClient().dioInstance;

  @override
  Future<void> init() async {
    try {
      _serviceLocator.registerSingleton(dio);
      await _register();
    } catch (e) {
      rethrow;
    }
  }

  @override
  T get<T extends Object>({
    String? instanceName,
    dynamic param1,
    dynamic param2,
  }) {
    try {
      final T instance = _serviceLocator.get<T>(
        instanceName: instanceName,
        param1: param1,
        param2: param2,
      );
      return instance;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _register() async {
    await _registerFeatures();
  }

  Future<void> _registerFeatures() async {
    await ReviewInjectionContainer().inject(_serviceLocator);
    await SubjectInjectionContainer().inject(_serviceLocator);
  }
}
