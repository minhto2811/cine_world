part of 'favourite_bloc.dart';

sealed class FavouriteEvent extends Equatable {
  const FavouriteEvent();
}

final class InitialEvent extends FavouriteEvent {
  const InitialEvent();

  @override
  List<Object?> get props => [];
}

final class NavigateEvent extends FavouriteEvent {
  final String route;
  final Object? arguments;

  const NavigateEvent({required this.route, this.arguments});

  @override
  List<Object?> get props => [route, arguments];
}
