import 'package:cine_world/data/models/movie.dart';
import 'package:cine_world/data/repositories/remote/film_remote_repository.dart';

class GetFilmBySlugUseCase {
  final FilmRemoteRepository _filmRemoteRepository;

  const GetFilmBySlugUseCase(
      {required FilmRemoteRepository filmRemoteRepository})
      : _filmRemoteRepository = filmRemoteRepository;

  Future<Movie> call({required String slug}) async =>
      await _filmRemoteRepository.getMovieBySlug(slug: slug);
}
