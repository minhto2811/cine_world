import 'package:cine_world/data/models/preview.dart';

import '../repositories/local/database.dart';

class GetPreviewsLocalUseCase {
  final Database _database;

  const GetPreviewsLocalUseCase({required Database database})
      : _database = database;

  Future<List<Preview>> call(
          {required int offset, required String type}) async =>
      await _database.getPreviews(offset: offset, type: type);
}
