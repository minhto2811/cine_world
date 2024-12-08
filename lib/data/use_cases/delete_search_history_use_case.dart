import 'package:cine_world/data/repositories/local/database.dart';
import 'package:isar/isar.dart';

class DeleteSearchHistoryUseCase {
  final Database _database;

  const DeleteSearchHistoryUseCase({required Database database})
      : _database = database;

  Future<void> call({required Id id}) async =>
      await _database.deleteSearchHistory(id: id);
}
