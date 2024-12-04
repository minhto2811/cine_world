part of 'injections.dart';

Future<void> repoInject() async {
  getIt.registerLazySingleton<FilmRemoteRepository>(
      () => FilmRemoteRepositoryImpl(apiService: getIt()));

  getIt.registerLazySingletonAsync<Database>(
      () async => await DatabaseImpl.create());
  await getIt.isReady<Database>();
}
