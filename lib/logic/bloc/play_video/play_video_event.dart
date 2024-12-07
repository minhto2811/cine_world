part of 'play_video_bloc.dart';

sealed class PlayVideoEvent extends Equatable {
  const PlayVideoEvent();
}

final class InitialEvent extends PlayVideoEvent {
  final BuildContext context;

  const InitialEvent({required this.context});

  @override
  List<Object> get props => [context];
}


final class ShowTitleEvent extends PlayVideoEvent {
  final String? title;

  const ShowTitleEvent({ this.title});

  @override
  List<Object?> get props => [title];
}