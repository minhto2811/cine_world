part of 'injections.dart';

void cubitInject() {
  getIt.registerLazySingleton<LanguageCubit>(() => LanguageCubit());
}