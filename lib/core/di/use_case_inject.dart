part of './injections.dart';

void useCaseInject() {
  getIt.registerLazySingleton<GetPreviewsUseCase>(
      () => GetPreviewsUseCase(filmRemoteRepository: getIt()));

  getIt.registerLazySingleton<GetFilmBySlugUseCase>(
      () => GetFilmBySlugUseCase(filmRemoteRepository: getIt()));
}
