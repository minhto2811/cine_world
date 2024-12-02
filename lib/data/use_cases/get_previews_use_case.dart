import 'package:cine_world/data/models/preview.dart';
import 'package:cine_world/data/repositories/remote/film_remote_repository.dart';

class GetPreviewsUseCase {
  final FilmRemoteRepository _filmRemoteRepository;

  const GetPreviewsUseCase({required FilmRemoteRepository filmRemoteRepository})
      : _filmRemoteRepository = filmRemoteRepository;

  Future<List<Preview>> call({required String path, required int page}) async =>
      await _filmRemoteRepository.getPreviews(path: path, page: page);
}
