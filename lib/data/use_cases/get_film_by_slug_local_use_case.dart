import 'package:cine_world/data/models/movie.dart';
import 'package:cine_world/data/repositories/local/database.dart';

class GetFilmBySlugLocalUseCase {
  final Database _database;

  GetFilmBySlugLocalUseCase({required Database database})
      : _database = database;

  Future<Movie?> call({required String slug}) async =>
      await _database.getFilmBySlug(slug: slug);
}
