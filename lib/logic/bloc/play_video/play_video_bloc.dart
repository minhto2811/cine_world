import 'dart:async';

import 'package:chewie/chewie.dart';
import 'package:cine_world/data/models/episodes.dart';
import 'package:cine_world/data/use_cases/get_video_duration_use_case.dart';
import 'package:cine_world/data/use_cases/save_video_duration_use_case.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

part 'play_video_event.dart';
part 'play_video_state.dart';

class PlayVideoBloc extends Bloc<PlayVideoEvent, PlayVideoState> {
  PlayVideoBloc({
    required SaveVideoDurationUseCase saveVideoDurationUseCase,
    required GetVideoDurationUseCase getVideoDurationUseCase,
  })  : _getVideoDurationUseCase = getVideoDurationUseCase,
        _saveVideoDurationUseCase = saveVideoDurationUseCase,
        super(PlayVideoInitial()) {
    on<InitialEvent>(_init);
    on<ShowTitleEvent>(_showTitle);
  }

  final SaveVideoDurationUseCase _saveVideoDurationUseCase;
  final GetVideoDurationUseCase _getVideoDurationUseCase;
  VideoPlayerController? videoPlayerController;

  ChewieController? _chewieController;
  late Timer _timer;

  void _showTitle(ShowTitleEvent event, Emitter<PlayVideoState> emit) {
    emit(TitleState(title: event.title));
  }

  void _init(InitialEvent event, Emitter<PlayVideoState> emit) async {
    final data = ModalRoute.of(event.context)!.settings.arguments as ServerData;
    add(ShowTitleEvent(title: data.name));
    videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(data.linkM3u8!));
    final videoDuration =
        await _getVideoDurationUseCase.call(videoUrl: data.linkM3u8!);
    await videoPlayerController!.initialize();
    _chewieController = ChewieController(
        videoPlayerController: videoPlayerController!,
        autoPlay: true,
        looping: true,
        autoInitialize: true,
        startAt: Duration(seconds: videoDuration?.duration ?? 0),
        allowFullScreen: true,
        errorBuilder: (context, errorMessage) => Column(
              children: [
                const Icon(Icons.info),
                Text(S.current.an_error_occurred),
              ],
            ),
        placeholder: const Center(child: CircularProgressIndicator()),
        zoomAndPan: true);
    _chewieController!.addListener(() {
      add(ShowTitleEvent(
          title: _chewieController!.isFullScreen ? null : data.name));
    });
    emit(LoadedState(controller: _chewieController!));
    _saveDuration(data.linkM3u8!);
  }

  void _saveDuration(String videoUrl) async {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      _saveVideoDurationUseCase.call(
          currentPosition: videoPlayerController?.value.position.inSeconds ?? 0,
          maxDuration: _chewieController
                  ?.videoPlayerController.value.duration.inSeconds ??
              0,
          videoUrl: videoUrl);
    });
  }

  @override
  Future<void> close() {
    _timer.cancel();
    videoPlayerController?.dispose();
    _chewieController?.dispose();
    return super.close();
  }
}
