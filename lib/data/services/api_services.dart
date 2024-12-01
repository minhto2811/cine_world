import 'package:cine_world/data/models/movie.dart';
import 'package:cine_world/data/models/preview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract interface class ApiService {
  Future<List<Preview>> getPreviews({required String path, required int page});

  Future<Movie> getMovie({required String slug});
}

class ApiServiceImpl implements ApiService {
  final _dio = Dio(BaseOptions(
    baseUrl: 'https://phimapi.com',
    receiveTimeout: const Duration(seconds: 10),
    connectTimeout: const Duration(seconds: 10),
    contentType: 'application/json',
    responseType: ResponseType.json,
  ));

  @override
  Future<Movie> getMovie({required String slug}) {
    // TODO: implement getMovie
    throw UnimplementedError();
  }

  @override
  Future<List<Preview>> getPreviews(
      {required String path, required int page}) async {
    debugPrint(path);
    final response = await _dio.get(path, queryParameters: {'page': page});
    if (response.statusCode != 200) throw Exception(response.statusCode);
    final status = response.data['status'];
    if ((status is bool && status == false) ||
        (status is String && status != 'success')) {
      throw Exception(response.data['msg']);
    }
    final data =
        (response.data['items'] ?? response.data['data']['items']) as List;
    debugPrint(data.toString());
    return data.map((e) => Preview.fromJson(e)).toList();
  }
}
