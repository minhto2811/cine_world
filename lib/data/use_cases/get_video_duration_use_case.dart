import 'package:cine_world/data/models/video_duration.dart';
import 'package:cine_world/data/repositories/local/database.dart';

class GetVideoDurationUseCase {
  final Database _database;

  const GetVideoDurationUseCase({required Database database})
      : _database = database;

  Future<VideoDuration?> call({required String videoUrl}) async =>
      await _database.getCurrentPosition(videoUrl: videoUrl);
}
