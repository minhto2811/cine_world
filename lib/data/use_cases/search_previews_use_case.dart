import 'package:cine_world/data/models/preview.dart';
import 'package:cine_world/data/repositories/remote/film_remote_repository.dart';

class SearchPreviewsUseCase {
  final FilmRemoteRepository _filmRemoteRepository;

  const SearchPreviewsUseCase(
      {required FilmRemoteRepository filmRemoteRepository})
      : _filmRemoteRepository = filmRemoteRepository;

  Future<List<Preview>> call(
          {required String keyword, required int limit}) async =>
      await _filmRemoteRepository.searchPreviews(
          keyword: keyword, limit: limit);
}
