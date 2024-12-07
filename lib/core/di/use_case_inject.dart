part of './injections.dart';

void useCaseInject() {
  getIt.registerLazySingleton<GetPreviewsUseCase>(
      () => GetPreviewsUseCase(filmRemoteRepository: getIt()));

  getIt.registerLazySingleton<GetFilmBySlugUseCase>(
      () => GetFilmBySlugUseCase(filmRemoteRepository: getIt()));

  getIt.registerLazySingleton<InsertPreviewLocalUseCase>(
      () => InsertPreviewLocalUseCase(database: getIt()));

  getIt.registerLazySingleton<GetPreviewsLocalUseCase>(
      () => GetPreviewsLocalUseCase(database: getIt()));

  getIt.registerLazySingleton<GetFilmBySlugLocalUseCase>(
      () => GetFilmBySlugLocalUseCase(database: getIt()));

  getIt.registerLazySingleton<InsertFilmLocalUseCase>(
      () => InsertFilmLocalUseCase(database: getIt()));
}
