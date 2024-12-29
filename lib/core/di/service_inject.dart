part of './injections.dart';

void serviceInject() {
  getIt.registerLazySingleton<ApiService>(() => ApiServiceImpl());
  getIt.registerLazySingleton<AdModService>(() => AdModServiceImpl());
}
