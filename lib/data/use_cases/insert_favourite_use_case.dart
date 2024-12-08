import 'package:cine_world/data/models/favourite.dart';
import 'package:cine_world/data/repositories/local/database.dart';

class InsertFavouriteUseCase {
  final Database _database;

  const InsertFavouriteUseCase({required Database database})
      : _database = database;

  Future<void> call({required String slug}) async =>
      await _database.insertFavourite(favourite: Favourite.create(slug: slug));
}
