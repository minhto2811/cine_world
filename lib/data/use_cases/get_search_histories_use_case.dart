


import 'package:cine_world/data/models/search_history.dart';
import 'package:cine_world/data/repositories/local/database.dart';

class GetSearchHistoriesUseCase {
  final Database _database;

  const GetSearchHistoriesUseCase({required Database database}) : _database = database;

  Future<List<SearchHistory>> call() async => await _database.getSearchHistories();
}