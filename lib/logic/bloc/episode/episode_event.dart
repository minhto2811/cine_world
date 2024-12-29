part of 'episode_bloc.dart';

sealed class EpisodeEvent extends Equatable {
  const EpisodeEvent();
}

final class InitialEvent extends EpisodeEvent {
  final String videoUrl;

  const InitialEvent({required this.videoUrl});

  @override
  List<Object> get props => [videoUrl];
}

final class NavigationEvent extends EpisodeEvent {
  final String route;
  final Object? arguments;

  const NavigationEvent({required this.route, this.arguments});

  @override
  List<Object> get props => [route];
}
