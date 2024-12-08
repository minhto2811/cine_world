part of 'injections.dart';

void blocInject() {
  getIt.registerFactory<SplashBloc>(() => SplashBloc());
  getIt.registerFactory<PagePreviewBloc>(() => PagePreviewBloc(
        getPreviewLocalUseCase: getIt(),
        insertPreviewUseCase: getIt(),
        getPreviewsUseCase: getIt(),
      ));
  getIt.registerFactory<FilmBloc>(() => FilmBloc(
        checkFavouriteUseCase: getIt(),
        deleteFavouriteUseCase: getIt(),
        insertFavouriteUseCase: getIt(),
        getFilmBySlugUseCase: getIt(),
        insertFilmLocalUseCase: getIt(),
        getFilmBySlugLocalUseCase: getIt(),
      ));

  getIt.registerFactory<PlayVideoBloc>(() => PlayVideoBloc());

  getIt.registerFactory<FavouriteBloc>(() => FavouriteBloc(
        getFavouritesUseCase: getIt(),
      ));

  getIt.registerFactory<SearchBloc>(() => SearchBloc(
        searchPreviewsUseCase: getIt(),
        deleteSearchHistoryUseCase: getIt(),
        insertSearchHistoryUseCase: getIt(),
        getSearchHistoriesUseCase: getIt(),
      ));
}
