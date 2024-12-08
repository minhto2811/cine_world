part of 'film_bloc.dart';

sealed class FilmState extends Equatable {
  const FilmState();
}

final class FilmInitial extends FilmState {
  @override
  List<Object> get props => [];
}

final class LoadingState extends FilmState {
  const LoadingState();
  @override
  List<Object> get props => [];
}

final class LoadedState extends FilmState {
  final Movie movie;
  const LoadedState({required this.movie});
  @override
  List<Object> get props => [movie];
}

final class ErrorState extends FilmState {
  const ErrorState();
  @override
  List<Object> get props => [];
}

final class FavoriteState extends FilmState {
  final bool isFavourite;
  const FavoriteState({required this.isFavourite});
  @override
  List<Object> get props => [isFavourite];
}
