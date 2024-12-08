import 'package:cine_world/data/models/favourite.dart';
import 'package:cine_world/data/models/movie.dart';
import 'package:cine_world/data/models/search_history.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../models/preview.dart';

abstract interface class Database {
  Future<bool> close({bool deleteFromDisk = false});

  Future<List<int>> insertPreviews({required List<Preview> previews});

  Future<List<Preview>> getPreviews(
      {required int offset, required String type});

  Future<void> insertFilm({required Movie movie});

  Future<Movie?> getFilmBySlug({required String slug});

  Future<void> insertFavourite({required Favourite favourite});

  Future<List<Preview>> getPreviewsByFavourites();

  Future<bool> checkFavourite({required String slug});

  Future<void> deleteFavourite({required String slug});

  Future<List<SearchHistory>> getSearchHistories();

  Future<void> insertSearchHistory({required SearchHistory searchHistory});

  Future<void> deleteSearchHistory({required Id id});
}

class DatabaseImpl implements Database {
  late final Isar _isar;

  DatabaseImpl._(this._isar);

  static Future<DatabaseImpl> create() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
        [PreviewSchema, MovieSchema, FavouriteSchema, SearchHistorySchema],
        directory: dir.path);
    return DatabaseImpl._(isar);
  }

  @override
  Future<bool> close({bool deleteFromDisk = false}) async =>
      await _isar.close(deleteFromDisk: deleteFromDisk);

  @override
  Future<List<int>> insertPreviews({required List<Preview> previews}) async =>
      await _isar.writeTxn(() => _isar.previews.putAll(previews), silent: true);

  @override
  Future<List<Preview>> getPreviews(
          {required int offset, required String type}) async =>
      await _isar.txn(() async => await _isar.previews
          .filter()
          .typeEqualTo(type)
          .sortByYearDesc()
          .offset(offset)
          .limit(10)
          .findAll());

  @override
  Future<void> insertFilm({required Movie movie}) async =>
      await _isar.writeTxn(() => _isar.movies.put(movie), silent: true);

  @override
  Future<Movie?> getFilmBySlug({required String slug}) async => await _isar.txn(
      () async => await _isar.movies.filter().slugEqualTo(slug).findFirst());

  @override
  Future<void> insertFavourite({required Favourite favourite}) async =>
      await _isar.writeTxn(() => _isar.favourites.put(favourite), silent: true);

  @override
  Future<List<Preview>> getPreviewsByFavourites() async {
    List<Favourite> favourites = [];
    await _isar
        .txn(() async => favourites = await _isar.favourites.where().findAll());
    if (favourites.isEmpty) return [];
    return await _isar.txn(() async => _isar.previews
        .filter()
        .anyOf(favourites, (q, element) => q.slugEqualTo(element.slug))
        .findAll());
  }

  @override
  Future<bool> checkFavourite({required String slug}) async {
    final e = await _isar.txn(() async =>
        await _isar.favourites.filter().slugEqualTo(slug).findFirst());
    return e != null;
  }

  @override
  Future<void> deleteFavourite({required String slug}) async =>
      await _isar.writeTxn(() async =>
          await _isar.favourites.filter().slugEqualTo(slug).deleteFirst());

  @override
  Future<void> deleteSearchHistory({required Id id}) async =>
      await _isar.writeTxn(() async =>
          await _isar.searchHistories.filter().idEqualTo(id).deleteFirst());

  @override
  Future<List<SearchHistory>> getSearchHistories() async =>
      await _isar.txn(() async => await _isar.searchHistories
          .where(sort: Sort.desc)
          .anyId()
          .limit(10)
          .findAll());

  @override
  Future<void> insertSearchHistory(
          {required SearchHistory searchHistory}) async =>
      await _isar.writeTxn(
          () async => await _isar.searchHistories.put(searchHistory),
          silent: true);
}
