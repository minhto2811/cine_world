import 'package:cine_world/data/repositories/local/database.dart';

class DeleteFavouriteUseCase {
  final Database _database;

  DeleteFavouriteUseCase({required Database database}) : _database = database;

  Future<void> call({required String slug}) async =>
      await _database.deleteFavourite(slug: slug);
}
