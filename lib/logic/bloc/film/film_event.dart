part of 'film_bloc.dart';

sealed class FilmEvent extends Equatable {
  const FilmEvent();
}

final class InitialEvent extends FilmEvent {
  final BuildContext context;

  const InitialEvent({required this.context});

  @override
  List<Object?> get props => [context];
}

final class FavouriteEvent extends FilmEvent {
  final bool isFavourite;

  const FavouriteEvent({required this.isFavourite});

  @override
  List<Object?> get props => [isFavourite];
}

final class CheckFavouriteEvent extends FilmEvent {
  final String slug;

  const CheckFavouriteEvent({required this.slug});

  @override
  List<Object?> get props => [slug];
}
