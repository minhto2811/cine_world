part of 'search_bloc.dart';

sealed class SearchEvent extends Equatable {
  const SearchEvent();
}


final class SearchByKeyWordEvent extends SearchEvent {
  final String keyword;

  const SearchByKeyWordEvent({required this.keyword});

  @override
  List<Object> get props => [keyword];
}

final class NavigateEvent extends SearchEvent {
  final String route;
  final Object? arguments;

  const NavigateEvent({required this.route, this.arguments});

  @override
  List<Object> get props => [route, arguments ?? ''];
}


final class HistoryEvent extends SearchEvent {
  final bool isShow;

  const HistoryEvent({required this.isShow});

  @override
  List<Object> get props => [isShow];
}

final class DeleteHistoryEvent extends SearchEvent {
  final Id id;

  const DeleteHistoryEvent({required this.id});

  @override
  List<Object> get props => [id];
}

final class SpeechEvent extends SearchEvent {
  const SpeechEvent();
  @override
  List<Object> get props => [];
}