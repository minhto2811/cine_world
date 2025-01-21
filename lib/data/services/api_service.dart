import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

abstract interface class ApiService {
  Future<Response<T>> get<T>(String path,
      {Map<String, dynamic>? queryParameters});
}

class ApiServiceImpl implements ApiService {
  ApiServiceImpl() {
    _init();
  }

  late final Dio _dio;

  void _init() {
    _dio = Dio(BaseOptions(
      baseUrl: 'https://phimapi.com',
      receiveTimeout: const Duration(seconds: 15),
      connectTimeout: const Duration(seconds: 15),
      contentType: 'application/json',
      responseType: ResponseType.json,
    ));
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        debugPrint('Request: ${options.method} ${options.path} ${options.queryParameters}');
        return handler.next(options);
      },
      onResponse: (response, handler) {
        debugPrint('Response: ${response.statusCode}');
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        debugPrint('Error: ${e.message}');
        return handler.next(e);
      },
    ));
  }

  @override
  Future<Response<T>> get<T>(String path,
          {Map<String, dynamic>? queryParameters}) async =>
      await _dio.get(path, queryParameters: queryParameters);
}
