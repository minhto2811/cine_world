part of 'favourite_bloc.dart';

sealed class FavouriteState extends Equatable {
  const FavouriteState();
}

final class FavouriteInitial extends FavouriteState {
  @override
  List<Object> get props => [];
}

final class FavouriteLoadedState extends FavouriteState {
  final List<Preview> previews;

  const FavouriteLoadedState({required this.previews});

  @override
  List<Object> get props => [previews];
}
