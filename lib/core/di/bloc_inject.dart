part of 'injections.dart';

void blocInject() {
  getIt.registerFactory<SplashBloc>(() => SplashBloc());
  getIt.registerFactory<PagePreviewBloc>(() => PagePreviewBloc(
        getPreviewLocalUseCase: getIt(),
        insertPreviewUseCase: getIt(),
        getPreviewsUseCase: getIt(),
      ));
  getIt.registerFactory<FilmBloc>(() => FilmBloc(
        getFilmBySlugUseCase: getIt(),
      ));
}
