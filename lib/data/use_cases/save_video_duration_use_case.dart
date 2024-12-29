import 'package:cine_world/data/repositories/local/database.dart';

class SaveVideoDurationUseCase {
  final Database _database;

  const SaveVideoDurationUseCase({required Database database})
      : _database = database;

  Future<void> call(
          {required String videoUrl,
          required int currentPosition,
          required int maxDuration}) async =>
      await _database.saveCurrentPosition(
          videoUrl: videoUrl,
          currentPosition: currentPosition,
          maxDuration: maxDuration);
}
