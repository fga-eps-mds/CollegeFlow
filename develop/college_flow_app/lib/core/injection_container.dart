import 'package:get_it/get_it.dart';

abstract class InjectionContainer {
  Future<void> inject(GetIt serviceLocator);
}
