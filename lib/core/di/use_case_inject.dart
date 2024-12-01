part of './injections.dart';

void useCaseInject() {
  getIt.registerLazySingleton<GetPreviewsUseCase>(
      () => GetPreviewsUseCase(apiService: getIt()));
}
