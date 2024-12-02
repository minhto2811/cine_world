part of 'injections.dart';

void repoInject() {
  getIt.registerLazySingleton<FilmRemoteRepository>(() => FilmRemoteRepositoryImpl());
}
