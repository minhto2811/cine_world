part of 'episode_bloc.dart';

sealed class EpisodeState extends Equatable {
  const EpisodeState();
}

final class EpisodeInitial extends EpisodeState {
  @override
  List<Object> get props => [];
}

final class LoadedState extends EpisodeState {
  final double ratio;

  const LoadedState({required this.ratio});

  @override
  List<Object> get props => [ratio];
}
