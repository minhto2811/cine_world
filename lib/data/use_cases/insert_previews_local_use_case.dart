import 'package:cine_world/data/models/preview.dart';
import 'package:cine_world/data/repositories/local/database.dart';

class InsertPreviewLocalUseCase {
  final Database _database;

  const InsertPreviewLocalUseCase({required Database database})
      : _database = database;

  Future<List<int>> call({required List<Preview> previews}) async =>
      await _database.insertPreviews(previews: previews);
}
