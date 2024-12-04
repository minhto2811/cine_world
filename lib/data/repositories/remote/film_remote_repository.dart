import 'package:cine_world/data/models/movie.dart';
import 'package:cine_world/data/models/preview.dart';
import 'package:cine_world/data/services/api_service.dart';

abstract interface class FilmRemoteRepository {
  Future<List<Preview>> getPreviews({required String path, required int page});

  Future<Movie> getMovieBySlug({required String slug});
}

class FilmRemoteRepositoryImpl implements FilmRemoteRepository {
  final ApiService _apiService;

  FilmRemoteRepositoryImpl({required ApiService apiService})
      : _apiService = apiService;

  @override
  Future<Movie> getMovieBySlug({required String slug}) async {
    final response = await _apiService.get('/phim/$slug');
    if (response.statusCode != 200) throw Exception(response.statusCode);
    if (response.data['status'] == false) throw Exception(response.data['msg']);
    return Movie.fromJson(response.data);
  }

  @override
  Future<List<Preview>> getPreviews(
      {required String path, required int page}) async {
    final response =
        await _apiService.get(path, queryParameters: {'page': page});
    if (response.statusCode != 200) throw Exception(response.statusCode);
    final status = response.data['status'];
    if ((status is bool && status == false) ||
        (status is String && status != 'success')) {
      throw Exception(response.data['msg']);
    }
    final data =
        (response.data['items'] ?? response.data['data']['items']) as List;
    final type = path.split('/').last;
    return data.map((e) => Preview.fromJson(e, type)).toList();
  }
}
