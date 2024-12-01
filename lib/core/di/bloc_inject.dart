part of 'injections.dart';

void blocInject() {
  getIt.registerFactory<SplashBloc>(() => SplashBloc());
  getIt.registerFactory<PagePreviewBloc>(() => PagePreviewBloc(
        getPreviewsUseCase: getIt(),
      ));
}
