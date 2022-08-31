import 'package:dio/dio.dart';

class APIClient {
  final BaseOptions _baseOptions = BaseOptions(
    //TODO(Mauricio-Machado): Insert here env value
    baseUrl: 'http://localhost:8000',
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );
  final Dio dioInstance = Dio();

  APIClient() {
    _onBaseOptionsUpdate();
  }

  void _onBaseOptionsUpdate() {
    dioInstance.options = _baseOptions;
  }
}
