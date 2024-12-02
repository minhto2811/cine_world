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
