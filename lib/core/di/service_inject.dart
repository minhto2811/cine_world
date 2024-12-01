part of 'injections.dart';

void serviceInject() {
  getIt.registerLazySingleton<ApiService>(() => ApiServiceImpl());
}
