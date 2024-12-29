part of 'play_video_bloc.dart';

sealed class PlayVideoState extends Equatable {
  const PlayVideoState();
}

final class PlayVideoInitial extends PlayVideoState {
  @override
  List<Object> get props => [];
}

final class TitleState extends PlayVideoState {
  final String? title;

  const TitleState({ this.title});

  @override
  List<Object?> get props => [title];
}


final class LoadedState extends PlayVideoState {
  final ChewieController controller;

  const LoadedState({required this.controller});

  @override
  List<Object> get props => [controller];
}

