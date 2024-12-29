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

  getIt.registerLazySingleton<CheckFavouriteUseCase>(
      () => CheckFavouriteUseCase(database: getIt()));

  getIt.registerLazySingleton<InsertFavouriteUseCase>(
      () => InsertFavouriteUseCase(database: getIt()));

  getIt.registerLazySingleton<DeleteFavouriteUseCase>(
      () => DeleteFavouriteUseCase(database: getIt()));

  getIt.registerLazySingleton<GetFavouritesUseCase>(
      () => GetFavouritesUseCase(database: getIt()));

  getIt.registerLazySingleton<SearchPreviewsUseCase>(
      () => SearchPreviewsUseCase(filmRemoteRepository: getIt()));

  getIt.registerLazySingleton<InsertSearchHistoryUseCase>(
      () => InsertSearchHistoryUseCase(database: getIt()));

  getIt.registerLazySingleton<GetSearchHistoriesUseCase>(
      () => GetSearchHistoriesUseCase(database: getIt()));

  getIt.registerLazySingleton<DeleteSearchHistoryUseCase>(
      () => DeleteSearchHistoryUseCase(database: getIt()));

  getIt.registerLazySingleton<PrecacheImageUseCase>(
      () => PrecacheImageUseCase());

  getIt.registerLazySingleton<GetBannerAdUseCase>(
      () => GetBannerAdUseCase(adModService: getIt()));
  getIt.registerLazySingleton<GetVideoDurationUseCase>(
      () => GetVideoDurationUseCase(database: getIt()));
  getIt.registerLazySingleton<SaveVideoDurationUseCase>(
      () => SaveVideoDurationUseCase(database: getIt()));
}
