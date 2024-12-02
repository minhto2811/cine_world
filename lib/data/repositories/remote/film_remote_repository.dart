
import 'package:cine_world/data/models/movie.dart';
import 'package:cine_world/data/models/preview.dart';
import 'package:dio/dio.dart';

abstract interface class FilmRemoteRepository {
  Future<List<Preview>> getPreviews({required String path, required int page});

  Future<Movie> getMovieBySlug({required String slug});
}

class FilmRemoteRepositoryImpl implements FilmRemoteRepository {
  final _dio = Dio(BaseOptions(
    baseUrl: 'https://phimapi.com',
    receiveTimeout: const Duration(seconds: 10),
    connectTimeout: const Duration(seconds: 10),
    contentType: 'application/json',
    responseType: ResponseType.json,
  ));

  @override
  Future<Movie> getMovieBySlug({required String slug}) async {
    final response = await _dio.get('/phim/$slug');
    if (response.statusCode != 200) throw Exception(response.statusCode);
    if (response.data['status'] == false) throw Exception(response.data['msg']);
    return Movie.fromJson(response.data);
  }

  @override
  Future<List<Preview>> getPreviews(
      {required String path, required int page}) async {
    final response = await _dio.get(path, queryParameters: {'page': page});
    if (response.statusCode != 200) throw Exception(response.statusCode);
    final status = response.data['status'];
    if ((status is bool && status == false) ||
        (status is String && status != 'success')) {
      throw Exception(response.data['msg']);
    }
    final data =
        (response.data['items'] ?? response.data['data']['items']) as List;
    return data.map((e) => Preview.fromJson(e)).toList();
  }
}
