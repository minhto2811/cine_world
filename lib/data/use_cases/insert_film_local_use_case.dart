import 'package:cine_world/data/models/movie.dart';
import 'package:cine_world/data/repositories/local/database.dart';

class InsertFilmLocalUseCase {
  final Database _database;

  InsertFilmLocalUseCase({required Database database}) : _database = database;

  Future<void> call({required Movie movie}) async =>
      await _database.insertFilm(movie: movie);
}
