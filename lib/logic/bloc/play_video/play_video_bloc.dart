import 'package:chewie/chewie.dart';
import 'package:cine_world/data/models/episodes.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

part 'play_video_event.dart';
part 'play_video_state.dart';

class PlayVideoBloc extends Bloc<PlayVideoEvent, PlayVideoState> {
  PlayVideoBloc() : super(PlayVideoInitial()) {
    on<InitialEvent>(_init);
    on<ShowTitleEvent>(_showTitle);
  }

  VideoPlayerController? videoPlayerController;

  ChewieController? chewieController;

  void _showTitle(ShowTitleEvent event, Emitter<PlayVideoState> emit) {
    emit(TitleState(title: event.title));
  }

  void _init(InitialEvent event, Emitter<PlayVideoState> emit) async {
    final data = ModalRoute.of(event.context)!.settings.arguments as ServerData;
    debugPrint('${data.linkEmbed}');
    videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(data.linkM3u8!));
    await videoPlayerController!.initialize();
    chewieController = ChewieController(
        videoPlayerController: videoPlayerController!,
        autoPlay: true,
        looping: true,
        autoInitialize: true,
        allowFullScreen: true,
        errorBuilder: (context, errorMessage) => Column(
              children: [
                const Icon(Icons.info),
                Text(S.current.an_error_occurred),
              ],
            ),
        placeholder: const Center(
            child: CircularProgressIndicator(color: Color(0xFFFF5510))),
        zoomAndPan: true);
    add(ShowTitleEvent(
        title: chewieController!.isFullScreen ? null : data.name));
    chewieController!.addListener(() {
      add(ShowTitleEvent(
          title: chewieController!.isFullScreen ? null : data.name));
    });
    emit(LoadedState(controller: chewieController!));
  }

  @override
  Future<void> close() {
    videoPlayerController?.dispose();
    chewieController?.dispose();
    return super.close();
  }
}
