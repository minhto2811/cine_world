part of 'search_bloc.dart';

sealed class SearchState extends Equatable {
  const SearchState();
}

final class SearchInitial extends SearchState {
  @override
  List<Object> get props => [];
}

final class LoadingState extends SearchState {
  const LoadingState();

  @override
  List<Object> get props => [];
}

final class LoadedState extends SearchState {
  final List<Preview> previews;

  const LoadedState({required this.previews});

  @override
  List<Object> get props => [previews];
}

final class ErrorState extends SearchState {
  const ErrorState();

  @override
  List<Object> get props => [];
}

final class HistoryState extends SearchState {
  final List<SearchHistory> histories;

  const HistoryState({required this.histories});

  @override
  List<Object> get props => [histories];
}
