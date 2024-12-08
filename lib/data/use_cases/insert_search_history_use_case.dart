import 'package:cine_world/data/models/search_history.dart';
import 'package:cine_world/data/repositories/local/database.dart';

class InsertSearchHistoryUseCase {
  final Database _database;

  const InsertSearchHistoryUseCase({required Database database})
      : _database = database;

  Future<void> call({required String keyword}) async =>
      await _database.insertSearchHistory(searchHistory: SearchHistory.create(keyword: keyword));
}
