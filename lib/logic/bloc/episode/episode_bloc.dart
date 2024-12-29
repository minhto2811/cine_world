import 'package:cine_world/data/models/episodes.dart';
import 'package:cine_world/data/use_cases/get_video_duration_use_case.dart';
import 'package:cine_world/presentation/route.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'episode_event.dart';
part 'episode_state.dart';

class EpisodeBloc extends Bloc<EpisodeEvent, EpisodeState> {
  EpisodeBloc({
    required GetVideoDurationUseCase getVideoDurationUseCase,
  })  : _getVideoDurationUseCase = getVideoDurationUseCase,
        super(EpisodeInitial()) {
    on<InitialEvent>(_init);
    on<NavigationEvent>(_navigation);
  }

  final GetVideoDurationUseCase _getVideoDurationUseCase;

  void _navigation(NavigationEvent event, Emitter<EpisodeState> emit) async {
    await MyRoute.pushNamed(routeName: event.route, arguments: event.arguments);
    add(InitialEvent(videoUrl: (event.arguments as ServerData).linkM3u8!));
  }

  void _init(InitialEvent event, Emitter<EpisodeState> emit) async {
    final videoDuration =
        await _getVideoDurationUseCase.call(videoUrl: event.videoUrl);
    final ratio = videoDuration == null
        ? 0.0
        : videoDuration.duration / videoDuration.maxDuration;
    emit(LoadedState(ratio: ratio));
  }
}
