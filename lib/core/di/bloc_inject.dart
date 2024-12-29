part of 'injections.dart';

void blocInject() {
  getIt.registerFactory<SplashBloc>(() => SplashBloc());
  getIt.registerFactory<PagePreviewBloc>(() => PagePreviewBloc(
      getPreviewLocalUseCase: getIt(),
      insertPreviewUseCase: getIt(),
      getPreviewsUseCase: getIt(),
      precacheImageUseCase: getIt()));
  getIt.registerFactory<FilmBloc>(() => FilmBloc(
        checkFavouriteUseCase: getIt(),
        deleteFavouriteUseCase: getIt(),
        insertFavouriteUseCase: getIt(),
        getFilmBySlugUseCase: getIt(),
        insertFilmLocalUseCase: getIt(),
        getFilmBySlugLocalUseCase: getIt(),
      ));

  getIt.registerFactory<PlayVideoBloc>(() => PlayVideoBloc(
        getVideoDurationUseCase: getIt(),
        saveVideoDurationUseCase: getIt(),
      ));

  getIt.registerFactory<FavouriteBloc>(() => FavouriteBloc(
        getFavouritesUseCase: getIt(),
      ));

  getIt.registerFactory<SearchBloc>(() => SearchBloc(
        searchPreviewsUseCase: getIt(),
        deleteSearchHistoryUseCase: getIt(),
        insertSearchHistoryUseCase: getIt(),
        getSearchHistoriesUseCase: getIt(),
      ));

  getIt.registerFactory<ThemeBloc>(() => ThemeBloc());
  getIt.registerFactory<LanguageBloc>(() => LanguageBloc());
  getIt.registerFactory<SettingsBloc>(() => SettingsBloc());
  getIt.registerFactory<BannerBloc>(
      () => BannerBloc(getBannerAdModUseCase: getIt()));
  getIt.registerFactory<SttBloc>(() => SttBloc());
  getIt.registerFactory<EpisodeBloc>(() => EpisodeBloc(
        getVideoDurationUseCase: getIt(),
      ));
}
