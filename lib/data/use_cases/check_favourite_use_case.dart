import 'package:cine_world/data/repositories/local/database.dart';

class CheckFavouriteUseCase {
  final Database _database;

  const CheckFavouriteUseCase({required Database database})
      : _database = database;

  Future<bool> call({required String slug}) async =>
      await _database.checkFavourite(slug: slug);
}
