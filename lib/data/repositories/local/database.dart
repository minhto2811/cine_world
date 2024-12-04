import 'package:cine_world/data/models/movie.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../models/preview.dart';

abstract interface class Database {
  Future<bool> close({bool deleteFromDisk = false});

  Future<List<int>> insertPreviews({required List<Preview> previews});

  Future<List<Preview>> getPreviews(
      {required int offset, required String type});

  Future<void> insertFilm({required Movie movie});
}

class DatabaseImpl implements Database {
  late final Isar _isar;

  DatabaseImpl._(this._isar);

  static Future<DatabaseImpl> create() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open([PreviewSchema], directory: dir.path);
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
      {required int offset, required String type}) async {
    final query = _isar.previews
        .filter()
        .typeEqualTo(type)
        .sortByYearDesc()
        .offset(offset)
        .limit(10)
        .build();
    return await query.findAll();
  }

  @override
  Future<void> insertFilm({required Movie movie}) async =>
      await _isar.writeTxn(() => _isar.previews.put(movie), silent: true);
}
