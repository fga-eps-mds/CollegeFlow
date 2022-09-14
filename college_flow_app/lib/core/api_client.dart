import 'package:dio/dio.dart';

class APIClient {
  final BaseOptions _baseOptions = BaseOptions(
    baseUrl: 'https://college-flow.herokuapp.com',
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
