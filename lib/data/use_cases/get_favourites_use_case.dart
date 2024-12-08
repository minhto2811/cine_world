

import 'package:cine_world/data/models/preview.dart';
import 'package:cine_world/data/repositories/local/database.dart';

class GetFavouritesUseCase {
  final Database _database;
  const GetFavouritesUseCase({required Database database}) : _database = database;

  Future<List<Preview>> call() => _database.getPreviewsByFavourites();
}