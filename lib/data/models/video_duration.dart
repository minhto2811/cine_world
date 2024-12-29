


import 'package:isar/isar.dart';
part 'video_duration.g.dart';

@Collection()
class VideoDuration {
  final Id id;
  final int duration;
  final int maxDuration;

  VideoDuration({required this.id, required this.duration, required this.maxDuration});
}